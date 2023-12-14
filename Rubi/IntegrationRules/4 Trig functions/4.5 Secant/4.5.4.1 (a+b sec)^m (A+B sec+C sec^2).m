(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  1/b^2 \[Star] Int[(a+b*Csc[e+f*x])^(m+1)*Simp[b*B-a*C+b*C*Csc[e+f*x],x],x] /;
FreeQ[{a,b,e,f,A,B,C,m},x] && EqQ[A*b^2-a*b*B+a^2*C,0]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  C/b^2 \[Star] Int[(a+b*Csc[e+f*x])^(m+1)*Simp[-a+b*Csc[e+f*x],x],x] /;
FreeQ[{a,b,e,f,A,C,m},x] && EqQ[A*b^2+a^2*C,0]


(* ::Code:: *)
Int[(b_.*csc[e_.+f_.*x_])^m_.*(A_+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  A*Cot[e+f*x]*(b*Csc[e+f*x])^m/(f*m) /;
FreeQ[{b,e,f,A,C,m},x] && EqQ[C*m+A*(m+1),0]


(* ::Code:: *)
Int[csc[e_.+f_.*x_]^m_.*(A_+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  Int[(C+A*Sin[e+f*x]^2)/Sin[e+f*x]^(m+2),x] /;
FreeQ[{e,f,A,C},x] && NeQ[C*m+A*(m+1),0] && ILtQ[(m+1)/2,0]


(* ::Code:: *)
Int[(b_.*csc[e_.+f_.*x_])^m_.*(A_+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  A*Cot[e+f*x]*(b*Csc[e+f*x])^m/(f*m) + 
  (C*m+A*(m+1))/(b^2*m) \[Star] Int[(b*Csc[e+f*x])^(m+2),x] /;
FreeQ[{b,e,f,A,C},x] && NeQ[C*m+A*(m+1),0] && LeQ[m,-1]


(* ::Code:: *)
Int[(b_.*csc[e_.+f_.*x_])^m_.*(A_+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -C*Cot[e+f*x]*(b*Csc[e+f*x])^m/(f*(m+1)) + 
  (C*m+A*(m+1))/(m+1) \[Star] Int[(b*Csc[e+f*x])^m,x] /;
FreeQ[{b,e,f,A,C,m},x] && NeQ[C*m+A*(m+1),0] && Not[LeQ[m,-1]]


(* ::Code:: *)
Int[(b_.*csc[e_.+f_.*x_])^m_.*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  B/b \[Star] Int[(b*Csc[e+f*x])^(m+1),x] + Int[(b*Csc[e+f*x])^m*(A+C*Csc[e+f*x]^2),x] /;
FreeQ[{b,e,f,A,B,C,m},x]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -b*C*Csc[e+f*x]*Cot[e+f*x]/(2*f) + 
  1/2 \[Star] Int[Simp[2*A*a+(2*B*a+b*(2*A+C))*Csc[e+f*x]+2*(a*C+B*b)*Csc[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,A,B,C},x]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -b*C*Csc[e+f*x]*Cot[e+f*x]/(2*f) + 
  1/2 \[Star] Int[Simp[2*A*a+b*(2*A+C)*Csc[e+f*x]+2*a*C*Csc[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,A,C},x]


(* ::Code:: *)
Int[(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2)/(a_+b_.*csc[e_.+f_.*x_]),x_Symbol] :=
  C/b \[Star] Int[Csc[e+f*x],x] + 1/b \[Star] Int[(A*b+(b*B-a*C)*Csc[e+f*x])/(a+b*Csc[e+f*x]),x] /;
FreeQ[{a,b,e,f,A,B,C},x]


(* ::Code:: *)
Int[(A_.+C_.*csc[e_.+f_.*x_]^2)/(a_+b_.*csc[e_.+f_.*x_]),x_Symbol] :=
  C/b \[Star] Int[Csc[e+f*x],x] + 1/b \[Star] Int[(A*b-a*C*Csc[e+f*x])/(a+b*Csc[e+f*x]),x] /;
FreeQ[{a,b,e,f,A,C},x]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -(a*A-b*B+a*C)*Cot[e+f*x]*(a+b*Csc[e+f*x])^m/(a*f*(2*m+1)) + 
  1/(a*b*(2*m+1)) \[Star] Int[(a+b*Csc[e+f*x])^(m+1)*Simp[A*b*(2*m+1)+(b*B*(m+1)-a*(A*(m+1)-C*m))*Csc[e+f*x],x],x] /;
FreeQ[{a,b,e,f,A,B,C},x] && EqQ[a^2-b^2,0] && LtQ[m,-1/2]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -a*(A+C)*Cot[e+f*x]*(a+b*Csc[e+f*x])^m/(a*f*(2*m+1)) + 
  1/(a*b*(2*m+1)) \[Star] Int[(a+b*Csc[e+f*x])^(m+1)*Simp[A*b*(2*m+1)-a*(A*(m+1)-C*m)*Csc[e+f*x],x],x] /;
FreeQ[{a,b,e,f,A,C},x] && EqQ[a^2-b^2,0] && LtQ[m,-1/2]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -C*Cot[e+f*x]*(a+b*Csc[e+f*x])^m/(f*(m+1)) + 
  1/(b*(m+1)) \[Star] Int[(a+b*Csc[e+f*x])^m*Simp[A*b*(m+1)+(a*C*m+b*B*(m+1))*Csc[e+f*x],x],x] /;
FreeQ[{a,b,e,f,A,B,C,m},x] && EqQ[a^2-b^2,0] && Not[LtQ[m,-1/2]]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -C*Cot[e+f*x]*(a+b*Csc[e+f*x])^m/(f*(m+1)) + 
  1/(b*(m+1)) \[Star] Int[(a+b*Csc[e+f*x])^m*Simp[A*b*(m+1)+a*C*m*Csc[e+f*x],x],x] /;
FreeQ[{a,b,e,f,A,C,m},x] && EqQ[a^2-b^2,0] && Not[LtQ[m,-1/2]]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -C*Cot[e+f*x]*(a+b*Csc[e+f*x])^m/(f*(m+1)) + 
  1/(m+1) \[Star] Int[(a+b*Csc[e+f*x])^(m-1)*
    Simp[a*A*(m+1)+((A*b+a*B)*(m+1)+b*C*m)*Csc[e+f*x]+(b*B*(m+1)+a*C*m)*Csc[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,A,B,C},x] && NeQ[a^2-b^2,0] && IGtQ[2*m,0]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_.*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  -C*Cot[e+f*x]*(a+b*Csc[e+f*x])^m/(f*(m+1)) + 
  1/(m+1) \[Star] Int[(a+b*Csc[e+f*x])^(m-1)*Simp[a*A*(m+1)+(A*b*(m+1)+b*C*m)*Csc[e+f*x]+a*C*m*Csc[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,A,C},x] && NeQ[a^2-b^2,0] && IGtQ[2*m,0]


(* ::Code:: *)
Int[(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2)/Sqrt[a_+b_.*csc[e_.+f_.*x_]],x_Symbol] :=
  Int[(A+(B-C)*Csc[e+f*x])/Sqrt[a+b*Csc[e+f*x]],x] + C \[Star] Int[Csc[e+f*x]*(1+Csc[e+f*x])/Sqrt[a+b*Csc[e+f*x]],x] /;
FreeQ[{a,b,e,f,A,B,C},x] && NeQ[a^2-b^2,0]


(* ::Code:: *)
Int[(A_.+C_.*csc[e_.+f_.*x_]^2)/Sqrt[a_+b_.*csc[e_.+f_.*x_]],x_Symbol] :=
  Int[(A-C*Csc[e+f*x])/Sqrt[a+b*Csc[e+f*x]],x] + C \[Star] Int[Csc[e+f*x]*(1+Csc[e+f*x])/Sqrt[a+b*Csc[e+f*x]],x] /;
FreeQ[{a,b,e,f,A,C},x] && NeQ[a^2-b^2,0]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  (A*b^2-a*b*B+a^2*C)*Cot[e+f*x]*(a+b*Csc[e+f*x])^(m+1)/(a*f*(m+1)*(a^2-b^2)) + 
  1/(a*(m+1)*(a^2-b^2)) \[Star] Int[(a+b*Csc[e+f*x])^(m+1)*
    Simp[A*(a^2-b^2)*(m+1)-a*(A*b-a*B+b*C)*(m+1)*Csc[e+f*x]+(A*b^2-a*b*B+a^2*C)*(m+2)*Csc[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,A,B,C},x] && NeQ[a^2-b^2,0] && LtQ[m,-1]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  (A*b^2+a^2*C)*Cot[e+f*x]*(a+b*Csc[e+f*x])^(m+1)/(a*f*(m+1)*(a^2-b^2)) + 
  1/(a*(m+1)*(a^2-b^2)) \[Star] Int[(a+b*Csc[e+f*x])^(m+1)*
    Simp[A*(a^2-b^2)*(m+1)-a*b*(A+C)*(m+1)*Csc[e+f*x]+(A*b^2+a^2*C)*(m+2)*Csc[e+f*x]^2,x],x] /;
FreeQ[{a,b,e,f,A,C},x] && NeQ[a^2-b^2,0] && IntegerQ[2*m] && LtQ[m,-1]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  1/b \[Star] Int[(a+b*Csc[e+f*x])^m*(A*b+(b*B-a*C)*Csc[e+f*x]),x] + C/b \[Star] Int[Csc[e+f*x]*(a+b*Csc[e+f*x])^(m+1),x] /;
FreeQ[{a,b,e,f,A,B,C,m},x] && NeQ[a^2-b^2,0] && Not[IntegerQ[2*m]]


(* ::Code:: *)
Int[(a_+b_.*csc[e_.+f_.*x_])^m_*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  1/b \[Star] Int[(a+b*Csc[e+f*x])^m*(A*b-a*C*Csc[e+f*x]),x] + C/b \[Star] Int[Csc[e+f*x]*(a+b*Csc[e+f*x])^(m+1),x] /;
FreeQ[{a,b,e,f,A,C,m},x] && NeQ[a^2-b^2,0] && Not[IntegerQ[2*m]]


(* ::Code:: *)
Int[(b_.*cos[e_.+f_.*x_])^m_*(A_.+B_.*sec[e_.+f_.*x_]+C_.*sec[e_.+f_.*x_]^2),x_Symbol] :=
  b^2 \[Star] Int[(b*Cos[e+f*x])^(m-2)*(C+B*Cos[e+f*x]+A*Cos[e+f*x]^2),x] /;
FreeQ[{b,e,f,A,B,C,m},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(b_.*sin[e_.+f_.*x_])^m_*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  b^2 \[Star] Int[(b*Sin[e+f*x])^(m-2)*(C+B*Sin[e+f*x]+A*Sin[e+f*x]^2),x] /;
FreeQ[{b,e,f,A,B,C,m},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(b_.*cos[e_.+f_.*x_])^m_*(A_.+C_.*sec[e_.+f_.*x_]^2),x_Symbol] :=
  b^2 \[Star] Int[(b*Cos[e+f*x])^(m-2)*(C+A*Cos[e+f*x]^2),x] /;
FreeQ[{b,e,f,A,C,m},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(b_.*sin[e_.+f_.*x_])^m_*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  b^2 \[Star] Int[(b*Sin[e+f*x])^(m-2)*(C+A*Sin[e+f*x]^2),x] /;
FreeQ[{b,e,f,A,C,m},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(a_.*(b_.*sec[e_.+f_.*x_])^p_)^m_*(A_.+B_.*sec[e_.+f_.*x_]+C_.*sec[e_.+f_.*x_]^2),x_Symbol] :=
  a^IntPart[m]*(a*(b*Sec[e+f*x])^p)^FracPart[m]/(b*Sec[e+f*x])^(p*FracPart[m]) \[Star] 
    Int[(b*Sec[e+f*x])^(m*p)*(A+B*Sec[e+f*x]+C*Sec[e+f*x]^2),x] /;
FreeQ[{a,b,e,f,A,B,C,m,p},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(a_.*(b_.*csc[e_.+f_.*x_])^p_)^m_*(A_.+B_.*csc[e_.+f_.*x_]+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  a^IntPart[m]*(a*(b*Csc[e+f*x])^p)^FracPart[m]/(b*Csc[e+f*x])^(p*FracPart[m]) \[Star] 
    Int[(b*Csc[e+f*x])^(m*p)*(A+B*Csc[e+f*x]+C*Csc[e+f*x]^2),x] /;
FreeQ[{a,b,e,f,A,B,C,m,p},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(a_.*(b_.*sec[e_.+f_.*x_])^p_)^m_*(A_.+C_.*sec[e_.+f_.*x_]^2),x_Symbol] :=
  a^IntPart[m]*(a*(b*Sec[e+f*x])^p)^FracPart[m]/(b*Sec[e+f*x])^(p*FracPart[m]) \[Star] 
    Int[(b*Sec[e+f*x])^(m*p)*(A+C*Sec[e+f*x]^2),x] /;
FreeQ[{a,b,e,f,A,C,m,p},x] && Not[IntegerQ[m]]


(* ::Code:: *)
Int[(a_.*(b_.*csc[e_.+f_.*x_])^p_)^m_*(A_.+C_.*csc[e_.+f_.*x_]^2),x_Symbol] :=
  a^IntPart[m]*(a*(b*Csc[e+f*x])^p)^FracPart[m]/(b*Csc[e+f*x])^(p*FracPart[m]) \[Star] 
    Int[(b*Csc[e+f*x])^(m*p)*(A+C*Csc[e+f*x]^2),x] /;
FreeQ[{a,b,e,f,A,C,m,p},x] && Not[IntegerQ[m]]



