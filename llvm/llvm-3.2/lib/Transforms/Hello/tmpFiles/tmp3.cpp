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
    std::map<std::string, int> opCounter;
    std::vector<std::string> addSize;
    static char ID; CountOp() : ModulePass(ID) {} 
    virtual bool runOnModule(Module& m) 
    {
        std::vector<Function*> fns;
        std::vector<Function*> clones;

        IRBuilder<> irb(m.getContext());

        // for (auto& fn : m.getFunctionList()) {
        for (Module::iterator I = m.getFunctionList().begin(), E = m.getFunctionList().end(); I != E; ++I) 
        {
          if (I->empty())
            continue;
          fns.push_back(I);
        }

        // for (Function* fn : fns)
        for (std::vector<Function*>::iterator fnn = fns.begin(), EN = fns.end(); fnn != EN; ++fnn) 
        {
          Function* fn = *fnn;

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

          clones.push_back(clone);


        }

        for (std::vector<Function*>::iterator d = clones.begin(), f = clones.end(); d != f; ++d) 
        {
          Function* fn = *d;
          errs() << "Function changed gg: " << fn->getName() << "\n";
        }
        m.dump();
        return true;
  }

};
}/**************************************************************************/



char CountOp::ID = 0; static RegisterPass<CountOp> X("opCounter", "Counts opcodes per functions");