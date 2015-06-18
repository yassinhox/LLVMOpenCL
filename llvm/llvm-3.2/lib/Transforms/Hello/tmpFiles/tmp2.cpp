#define DEBUG_TYPE "opCounter" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Pass.h"    
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/ADT/ilist.h"    
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/ADT/ArrayRef.h"    
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Argument.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Function.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Module.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Support/raw_ostream.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/IRBuilder.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Type.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/DerivedTypes.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/GlobalValue.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/TypeFinder.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Instructions.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Support/Casting.h" 
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/InstrTypes.h"
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Metadata.h"
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/MDBuilder.h"
#include "/home/jazouani/llvm/llvm-3.2/include/llvm/Transforms/Utils/Cloning.h"

#include <map> 
#include <vector> 


using namespace llvm; 
namespace 
{
  struct CountOp : public ModulePass 
  {
    static char ID; CountOp() : ModulePass(ID) {} 

    std::map<Function*, Function*> original_2_clone;
    std::vector<Function*> fns;
    std::vector<Function*> clones;
    std::map<std::string, int> opCounter;
    std::vector<std::string> addSize;
    unsigned num_args;

    bool runOnModule(Module& m) 
    {

      IRBuilder<> irb(m.getContext());
      // clone functions

      for (Module::iterator I = m.getFunctionList().begin(), E = m.getFunctionList().end(); I != E; ++I) 
      {
        if (I->empty())
          continue;
        fns.push_back(I);
      }

    for (std::vector<Function*>::iterator fnn = fns.begin(), EN = fns.end(); fnn != EN; ++fnn) 
      {
        Function* old_kernel = *fnn;

        num_args = findNumberOfUsedKernelPointerArgs(old_kernel);

        if (num_args == 0)
          return false;

        Function* new_kernel = cloneFn(old_kernel, num_args, m);

        // remember which clone belongs to which function
        original_2_clone[old_kernel] = new_kernel;
      }

      // create new metadata
      NamedMDNode* opencl_kernels = m.getNamedMetadata("opencl.kernels");

      for (int i = 0, end = opencl_kernels->getNumOperands(); i != end; i++) 
      {
        MDNode* old_kernel = opencl_kernels->getOperand(i);
        MDNode* new_kernel = cloneMetadata(old_kernel, num_args);

        // if (new_kernel)
        //   opencl_kernels->setOperand(i, new_kernel);
      }
    }

    unsigned findNumberOfUsedKernelPointerArgs(Function* fn) 
    {
      Function::const_arg_iterator AB = fn->arg_begin();
      Function::const_arg_iterator AE = fn->arg_end();
      while(AB != AE)
      {
        if(AB->getType()->isPointerTy())
        {
          //* arg = *AB;
          //errs() << "AS : " << cast<PointerType>(AB)->getAddressSpace() << " \n";
          Type* tmp = AB->getType();
          // errs() << "AS : " << cast<PointerType>(tmp)->getAddressSpace() << "\n";
          if(cast<PointerType>(tmp)->getAddressSpace() == 1)
          {  
            std::string name = "size_"+AB->getName().str();
            addSize.push_back(name);
          }
        }
        AB++;
      }

      return addSize.size();
    }

    Function* cloneFn(Function* fn, unsigned num_args_to_add, Module m) 
    {
      FunctionType* oldType = fn->getFunctionType();
      std::vector<Type*> params;
      unsigned it = 0;
      while( it != oldType->getNumParams())
      {
        params.push_back(oldType->getParamType(it));
        it++;
      }

      std::vector <std::string>::iterator i = addSize.begin(); 
      std::vector <std::string>::iterator e = addSize.end(); 
      IRBuilder<> irb(m.getContext());

      while (i != e) 
      { 
        // errs() << "Argument to add : " << *i << "\n"; 
        params.push_back(irb.getInt32Ty());
        i++; 
      }

      FunctionType* newType = FunctionType::get(oldType->getReturnType(), params, false);
      //assert(newType);

      Function* clone = Function::Create(newType, fn->getLinkage(), "", &m);
      clone->takeName(fn);

      //assert(clone);

      std::vector <std::string>::iterator ii = addSize.begin(); 
      std::vector <std::string>::iterator ee = addSize.end();
      ValueToValueMapTy VMap;

      // Loop over the arguments, copying the names of the mapped arguments over...
      Function::arg_iterator DestI = clone->arg_begin();
      for (Function::const_arg_iterator I = fn->arg_begin(), E = fn->arg_end(); I != E; ++I)
      {
        if (VMap.count(I) == 0) 
        {   
          DestI->setName(I->getName()); // Copy the name over...
          VMap[I] = DestI++;        // Add mapping to VMap
        }
      }

      std::vector <std::string>::iterator ia = addSize.begin(); 
      std::vector <std::string>::iterator ea = addSize.end();
      for (Function::arg_iterator I = clone->arg_begin(), E = clone->arg_end(); I != E; ++I)
      {
        if(I->getName().empty())
        {
          // errs() << "I'm empty\n";
          I->setName(*ia);
          ia++;
        }
      }

      SmallVector<ReturnInst*, 5> returns;
      llvm::CloneFunctionInto(clone, fn,
                       VMap,
                       false, /*TODO???*/
                       returns,
                       "");

      fn->eraseFromParent();

      //clone->dump();
      return clone;

    }

    MDNode* cloneMetadata(MDNode* old_kernel, int numArgs) 
    {
      assert(old_kernel.getNumOperands() == 6);

      Function* kernel_fn              = cast<Function>(old_kernel->getOperand(0));
      MDNode*    kernel_arg_addr_space  = cast<MDNode>(old_kernel->getOperand(1));
      MDNode*    kernel_arg_access_qual = cast<MDNode>(old_kernel->getOperand(2));
      MDNode*    kernel_arg_type        = cast<MDNode>(old_kernel->getOperand(3));
      MDNode*    kernel_arg_type_qual   = cast<MDNode>(old_kernel->getOperand(4));
      MDNode*    kernel_arg_base_type   = cast<MDNode>(old_kernel->getOperand(5));

      // if we did not clone the function we don't have to clone the metadata
      if (original_2_clone.count(kernel_fn) == 0)
        return NULL;
    /**********************************************************/
      IRBuilder<> irb(m.getContext());

      // insert new metadata for new arguments in clone
      std::vector<Value*> args_addr;
      for (int j = 0; j < numArgs; j++)
      {
        args_addr.push_back(irb.getInt32Ty());
        args_addr.push_back(irb.getInt32(0));
      }

      MNode* new_kernel_arg_addr_space = MDNode::concatenate(
        kernel_arg_addr_space,
        MDNode::get(ctx, args)
      );

    /**********************************************************/
      std::vector<Value*> args_acc;

      for (int j = 0; j < numArgs; j++)
      {
        args_acc.push_back("none");
      }

      MNode* new_kernel_arg_addr_space = MDNode::concatenate(
        kernel_arg_addr_space,
        MDNode::get(ctx, args)
      );
      // TODO for the other operands of old_kernel
      // assert(false && "TODO");
      // ....

      // create new kernel metadata
      std::vector<MDNode*> new_args;
      new_args.push_back(original_2_clone);
      new_args.push_back(new_kernel_arg_addr_space);
      new_args.push_back(new_kernel_arg_access_qual);
      new_args.push_back(new_kernel_arg_type);
      new_args.push_back(new_kernel_arg_type_qual);
      new_args.push_back(new_kernel_arg_base_type);

      MDNode* new_kernel = MDNode::get(ctx, new_args);

      return new_kernel;
    }
  };
}
