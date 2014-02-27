module SkelCPP where

-- Haskell module generated by the BNF converter

import AbsCPP
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transId :: Id -> Result
transId x = case x of
  Id str  -> failure x


transProgram :: Program -> Result
transProgram x = case x of
  PDefs defs  -> failure x


transDef :: Def -> Result
transDef x = case x of
  DFun type' id args stms  -> failure x


transArg :: Arg -> Result
transArg x = case x of
  ADecl type' id  -> failure x


transStm :: Stm -> Result
transStm x = case x of
  SExp exp  -> failure x
  SDecls type' ids  -> failure x
  SInit type' id exp  -> failure x
  SReturn exp  -> failure x
  SWhile exp stm  -> failure x
  SBlock stms  -> failure x
  SIfElse exp stm1 stm2  -> failure x


transExp :: Exp -> Result
transExp x = case x of
  ETrue  -> failure x
  EFalse  -> failure x
  EInt n  -> failure x
  EDouble d  -> failure x
  EId id  -> failure x
  EString str  -> failure x
  EApp id exps  -> failure x
  EPIncr exp  -> failure x
  EPDecr exp  -> failure x
  EIncr exp  -> failure x
  EDecr exp  -> failure x
  ETimes exp1 exp2  -> failure x
  EDiv exp1 exp2  -> failure x
  EPlus exp1 exp2  -> failure x
  EMinus exp1 exp2  -> failure x
  ELt exp1 exp2  -> failure x
  EGt exp1 exp2  -> failure x
  ELtEq exp1 exp2  -> failure x
  EGtWq exp1 exp2  -> failure x
  EEq exp1 exp2  -> failure x
  ENEq exp1 exp2  -> failure x
  EAnd exp1 exp2  -> failure x
  EOr exp1 exp2  -> failure x
  EAss exp1 exp2  -> failure x
  ETyped exp type'  -> failure x
  EConv type' exp  -> failure x


transType :: Type -> Result
transType x = case x of
  Type_bool  -> failure x
  Type_int  -> failure x
  Type_double  -> failure x
  Type_void  -> failure x
  Type_string  -> failure x


