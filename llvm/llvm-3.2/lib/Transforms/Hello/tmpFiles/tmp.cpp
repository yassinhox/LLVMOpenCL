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

        NamedMDNode* granFather = m.getNamedMetadata("opencl.kernels");

        MDBuilder mdb(m.getContext());
        // MDNode* ttt = mdb.createFPMath(0.2);
        MDString* ttt = MDNode::get(m.getContext(), "test");
        granFather->addOperand(ttt);

        // NamedMDNode* clone = new(m.getContext(), NULL, ttt, 1, m);

        int fin = granFather->getNumOperands();
        errs() << "GF : Number of op : " << fin << "\n";
        int curr = 0;

        /*while(curr != fin)
        {
          MDNode* father = granFather->getOperand(curr);
          int fin2 = father->getNumOperands();
          int curr2 = 0;
          errs() << "F Subnumber of op : " << fin2 << "\n";
          while(curr2 != fin2)
          {
            Value* tmp2 = father->getOperand(curr2);
            // int fin3 = tmp2=>getNumOperands();
            errs() << "SubSubnumber of op : " << tmp2->getName() << "\n";
            if(tmp2->getName().empty())
            {
              MDNode* son =  dyn_cast<MDNode>(tmp2);
              errs() << "S taille : " << son->getNumOperands() << "\n";
              int fin3 = son->getNumOperands();
              int curr3 = 0;
              while(curr3 != fin3)
              {
                Value* ttmp2 = son->getOperand(curr3);
                errs() << "S Name : " << ttmp2->getName() << "\n";
                // if(ttmp2->getName() == "kernel_arg_addr_space")
                // if(ttmp2->getName() == "kernel_arg_access_qual")
                // if(ttmp2->getName() == "kernel_arg_type")
                // if(ttmp2->getName() == "kernel_arg_type_qual")
                // if(ttmp2->getName() == "kernel_arg_base_type")
                // MDBuilder mdb(m.getContext());
                // MDNode* ttt = mdb.createFPMath(0.2);
                // granFather->addOperand(ttt);
                curr3 ++;
              }
            }
            curr2 ++;
          }
          curr++;
        }*/

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

          //clone->dump();
          clones.push_back(clone);


        }

        for (std::vector<Function*>::iterator d = clones.begin(), f = clones.end(); d != f; ++d) 
        {
          Function* fn = *d;
          errs() << "Function changed gg: " << fn->getName() << "\n";
        }

              // clones.push_back(clones);
              /*
              for (...) { 
                if (auto* load = dyn_cast<LoadInst>(i)) {
                  auto *ptr = load->getPointerArg();

                  auto *base = GetUnderlyingObject(ptr, m->getDataLayouot(), 0);

                  assert(isa<Argument>(base));

                  irb.createIcmp(p2, base)


                } else if (auto* store = dyn_cast<LoadInst>(i))

                }

                assert(!i->mayReadOrWriteMemory());
              }
            }

            for (auto* fn : clones) {

            }*/
        m.dump();

        // NamedMDNode* granFather = m.getNamedMetadata("opencl.kernels");

        // int fin = granFather->getNumOperands();
        // errs() << "GF : Number of op : " << fin << "\n";
        // int curr = 0;

        // while(curr != fin)
        // {
        //   MDNode* father = granFather->getOperand(curr);
        //   int fin2 = father->getNumOperands();
        //   int curr2 = 0;
        //   errs() << "F Subnumber of op : " << fin2 << "\n";
        //   while(curr2 != fin2)
        //   {
        //     Value* tmp2 = father->getOperand(curr2);
        //     assert(tmp2);
        //     // errs() << "SubSubnumber of op : " << tmp2->getName() << "\n";
        //     if(tmp2->getName().empty())
        //     {
        //       MDNode* son =  dyn_cast<MDNode>(tmp2);
        //       errs() << "S taille : " << son->getNumOperands() << "\n";
        //       int fin3 = son->getNumOperands();
        //       int curr3 = 0;
        //       while(curr3 != fin3)
        //       {
        //         Value* ttmp2 = son->getOperand(curr3);
        //         errs() << "S Name : " << ttmp2->getName() << "\n";
        //         curr3 ++;
        //       }
        //     }
        //     curr2 ++;
        //   }
        //   curr++;
        // }
            return true;
  }

};
}/**************************************************************************/



char CountOp::ID = 0; static RegisterPass<CountOp> X("opCounter", "Counts opcodes per functions");