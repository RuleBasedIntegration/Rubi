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
Int[(a_.+b_.*ArcSin[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(a+b*ArcSin[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[(a_.+b_.*ArcCos[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(a+b*ArcCos[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcSin[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcSin[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m,n},x]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCos[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcCos[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m,n},x]


(* ::Code:: *)
Int[(A_.+B_.*x_+C_.*x_^2)^p_.*(a_.+b_.*ArcSin[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(-C/d^2+C/d^2*x^2)^p*(a+b*ArcSin[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,A,B,C,n,p},x] && EqQ[B*(1-c^2)+2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(A_.+B_.*x_+C_.*x_^2)^p_.*(a_.+b_.*ArcCos[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(-C/d^2+C/d^2*x^2)^p*(a+b*ArcCos[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,A,B,C,n,p},x] && EqQ[B*(1-c^2)+2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(A_.+B_.*x_+C_.*x_^2)^p_.*(a_.+b_.*ArcSin[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(-C/d^2+C/d^2*x^2)^p*(a+b*ArcSin[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,A,B,C,m,n,p},x] && EqQ[B*(1-c^2)+2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(A_.+B_.*x_+C_.*x_^2)^p_.*(a_.+b_.*ArcCos[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(-C/d^2+C/d^2*x^2)^p*(a+b*ArcCos[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,A,B,C,m,n,p},x] && EqQ[B*(1-c^2)+2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*ArcSin[c_+d_.*x_^2]],x_Symbol] :=
  x*Sqrt[a+b*ArcSin[c+d*x^2]] - 
  Sqrt[Pi]*x*(Cos[a/(2*b)]+c*Sin[a/(2*b)])*FresnelC[Sqrt[c/(Pi*b)]*Sqrt[a+b*ArcSin[c+d*x^2]]]/
    (Sqrt[c/b]*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) + 
  Sqrt[Pi]*x*(Cos[a/(2*b)]-c*Sin[a/(2*b)])*FresnelS[Sqrt[c/(Pi*b)]*Sqrt[a+b*ArcSin[c+d*x^2]]]/
    (Sqrt[c/b]*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*ArcCos[1+d_.*x_^2]],x_Symbol] :=
  -2*Sqrt[a+b*ArcCos[1+d*x^2]]*Sin[ArcCos[1+d*x^2]/2]^2/(d*x) - 
  2*Sqrt[Pi]*Sin[a/(2*b)]*Sin[ArcCos[1+d*x^2]/2]*FresnelC[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[1+d*x^2]]]/(Sqrt[1/b]*d*x) + 
  2*Sqrt[Pi]*Cos[a/(2*b)]*Sin[ArcCos[1+d*x^2]/2]*FresnelS[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[1+d*x^2]]]/(Sqrt[1/b]*d*x) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*ArcCos[-1+d_.*x_^2]],x_Symbol] :=
  2*Sqrt[a+b*ArcCos[-1+d*x^2]]*Cos[(1/2)*ArcCos[-1+d*x^2]]^2/(d*x) - 
  2*Sqrt[Pi]*Cos[a/(2*b)]*Cos[ArcCos[-1+d*x^2]/2]*FresnelC[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[-1+d*x^2]]]/(Sqrt[1/b]*d*x) - 
  2*Sqrt[Pi]*Sin[a/(2*b)]*Cos[ArcCos[-1+d*x^2]/2]*FresnelS[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[-1+d*x^2]]]/(Sqrt[1/b]*d*x) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[(a_.+b_.*ArcSin[c_+d_.*x_^2])^n_,x_Symbol] :=
  x*(a+b*ArcSin[c+d*x^2])^n + 
  2*b*n*Sqrt[-2*c*d*x^2-d^2*x^4]*(a+b*ArcSin[c+d*x^2])^(n-1)/(d*x) - 
  4*b^2*n*(n-1) \[Star] Int[(a+b*ArcSin[c+d*x^2])^(n-2),x] /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1] && GtQ[n,1]


(* ::Code:: *)
Int[(a_.+b_.*ArcCos[c_+d_.*x_^2])^n_,x_Symbol] :=
  x*(a+b*ArcCos[c+d*x^2])^n - 
  2*b*n*Sqrt[-2*c*d*x^2-d^2*x^4]*(a+b*ArcCos[c+d*x^2])^(n-1)/(d*x) - 
  4*b^2*n*(n-1) \[Star] Int[(a+b*ArcCos[c+d*x^2])^(n-2),x] /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1] && GtQ[n,1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcSin[c_+d_.*x_^2]),x_Symbol] :=
  -x*(c*Cos[a/(2*b)]-Sin[a/(2*b)])*CosIntegral[(c/(2*b))*(a+b*ArcSin[c+d*x^2])]/
    (2*b*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) - 
  x*(c*Cos[a/(2*b)]+Sin[a/(2*b)])*SinIntegral[(c/(2*b))*(a+b*ArcSin[c+d*x^2])]/
    (2*b*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcCos[1+d_.*x_^2]),x_Symbol] :=
  x*Cos[a/(2*b)]*CosIntegral[(a+b*ArcCos[1+d*x^2])/(2*b)]/(Sqrt[2]*b*Sqrt[-d*x^2]) + 
  x*Sin[a/(2*b)]*SinIntegral[(a+b*ArcCos[1+d*x^2])/(2*b)]/(Sqrt[2]*b*Sqrt[-d*x^2]) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcCos[-1+d_.*x_^2]),x_Symbol] :=
  x*Sin[a/(2*b)]*CosIntegral[(a+b*ArcCos[-1+d*x^2])/(2*b)]/(Sqrt[2]*b*Sqrt[d*x^2]) - 
  x*Cos[a/(2*b)]*SinIntegral[(a+b*ArcCos[-1+d*x^2])/(2*b)]/(Sqrt[2]*b*Sqrt[d*x^2]) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*ArcSin[c_+d_.*x_^2]],x_Symbol] :=
  -Sqrt[Pi]*x*(Cos[a/(2*b)]-c*Sin[a/(2*b)])*FresnelC[1/(Sqrt[b*c]*Sqrt[Pi])*Sqrt[a+b*ArcSin[c+d*x^2]]]/
    (Sqrt[b*c]*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) - 
  Sqrt[Pi]*x*(Cos[a/(2*b)]+c*Sin[a/(2*b)])*FresnelS[(1/(Sqrt[b*c]*Sqrt[Pi]))*Sqrt[a+b*ArcSin[c+d*x^2]]]/
    (Sqrt[b*c]*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*ArcCos[1+d_.*x_^2]],x_Symbol] :=
  -2*Sqrt[Pi/b]*Cos[a/(2*b)]*Sin[ArcCos[1+d*x^2]/2]*FresnelC[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[1+d*x^2]]]/(d*x) - 
   2*Sqrt[Pi/b]*Sin[a/(2*b)]*Sin[ArcCos[1+d*x^2]/2]*FresnelS[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[1+d*x^2]]]/(d*x) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*ArcCos[-1+d_.*x_^2]],x_Symbol] :=
  2*Sqrt[Pi/b]*Sin[a/(2*b)]*Cos[ArcCos[-1+d*x^2]/2]*FresnelC[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[-1+d*x^2]]]/(d*x) - 
  2*Sqrt[Pi/b]*Cos[a/(2*b)]*Cos[ArcCos[-1+d*x^2]/2]*FresnelS[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[-1+d*x^2]]]/(d*x) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcSin[c_+d_.*x_^2])^(3/2),x_Symbol] :=
  -Sqrt[-2*c*d*x^2-d^2*x^4]/(b*d*x*Sqrt[a+b*ArcSin[c+d*x^2]]) - 
  (c/b)^(3/2)*Sqrt[Pi]*x*(Cos[a/(2*b)]+c*Sin[a/(2*b)])*FresnelC[Sqrt[c/(Pi*b)]*Sqrt[a+b*ArcSin[c+d*x^2]]]/
    (Cos[(1/2)*ArcSin[c+d*x^2]]-c*Sin[ArcSin[c+d*x^2]/2]) + 
  (c/b)^(3/2)*Sqrt[Pi]*x*(Cos[a/(2*b)]-c*Sin[a/(2*b)])*FresnelS[Sqrt[c/(Pi*b)]*Sqrt[a+b*ArcSin[c+d*x^2]]]/
    (Cos[(1/2)*ArcSin[c+d*x^2]]-c*Sin[ArcSin[c+d*x^2]/2]) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcCos[1+d_.*x_^2])^(3/2),x_Symbol] :=
  Sqrt[-2*d*x^2-d^2*x^4]/(b*d*x*Sqrt[a+b*ArcCos[1+d*x^2]]) - 
  2*(1/b)^(3/2)*Sqrt[Pi]*Sin[a/(2*b)]*Sin[ArcCos[1+d*x^2]/2]*FresnelC[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[1+d*x^2]]]/(d*x) + 
  2*(1/b)^(3/2)*Sqrt[Pi]*Cos[a/(2*b)]*Sin[ArcCos[1+d*x^2]/2]*FresnelS[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[1+d*x^2]]]/(d*x) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcCos[-1+d_.*x_^2])^(3/2),x_Symbol] :=
  Sqrt[2*d*x^2-d^2*x^4]/(b*d*x*Sqrt[a+b*ArcCos[-1+d*x^2]]) - 
  2*(1/b)^(3/2)*Sqrt[Pi]*Cos[a/(2*b)]*Cos[ArcCos[-1+d*x^2]/2]*FresnelC[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[-1+d*x^2]]]/(d*x) - 
  2*(1/b)^(3/2)*Sqrt[Pi]*Sin[a/(2*b)]*Cos[ArcCos[-1+d*x^2]/2]*FresnelS[Sqrt[1/(Pi*b)]*Sqrt[a+b*ArcCos[-1+d*x^2]]]/(d*x) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcSin[c_+d_.*x_^2])^2,x_Symbol] :=
  -Sqrt[-2*c*d*x^2-d^2*x^4]/(2*b*d*x*(a+b*ArcSin[c+d*x^2])) - 
  x*(Cos[a/(2*b)]+c*Sin[a/(2*b)])*CosIntegral[(c/(2*b))*(a+b*ArcSin[c+d*x^2])]/
    (4*b^2*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) + 
  x*(Cos[a/(2*b)]-c*Sin[a/(2*b)])*SinIntegral[(c/(2*b))*(a+b*ArcSin[c+d*x^2])]/
    (4*b^2*(Cos[ArcSin[c+d*x^2]/2]-c*Sin[ArcSin[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcCos[1+d_.*x_^2])^2,x_Symbol] :=
  Sqrt[-2*d*x^2-d^2*x^4]/(2*b*d*x*(a+b*ArcCos[1+d*x^2])) + 
  x*Sin[a/(2*b)]*CosIntegral[(a+b*ArcCos[1+d*x^2])/(2*b)]/(2*Sqrt[2]*b^2*Sqrt[(-d)*x^2]) - 
  x*Cos[a/(2*b)]*SinIntegral[(a+b*ArcCos[1+d*x^2])/(2*b)]/(2*Sqrt[2]*b^2*Sqrt[(-d)*x^2]) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcCos[-1+d_.*x_^2])^2,x_Symbol] :=
  Sqrt[2*d*x^2-d^2*x^4]/(2*b*d*x*(a+b*ArcCos[-1+d*x^2])) - 
  x*Cos[a/(2*b)]*CosIntegral[(a+b*ArcCos[-1+d*x^2])/(2*b)]/(2*Sqrt[2]*b^2*Sqrt[d*x^2]) - 
  x*Sin[a/(2*b)]*SinIntegral[(a+b*ArcCos[-1+d*x^2])/(2*b)]/(2*Sqrt[2]*b^2*Sqrt[d*x^2]) /;
FreeQ[{a,b,d},x]


(* ::Code:: *)
Int[(a_.+b_.*ArcSin[c_+d_.*x_^2])^n_,x_Symbol] :=
  x*(a+b*ArcSin[c+d*x^2])^(n+2)/(4*b^2*(n+1)*(n+2)) + 
  Sqrt[-2*c*d*x^2-d^2*x^4]*(a+b*ArcSin[c+d*x^2])^(n+1)/(2*b*d*(n+1)*x) - 
  1/(4*b^2*(n+1)*(n+2)) \[Star] Int[(a+b*ArcSin[c+d*x^2])^(n+2),x] /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1] && LtQ[n,-1] && NeQ[n,-2]


(* ::Code:: *)
Int[(a_.+b_.*ArcCos[c_+d_.*x_^2])^n_,x_Symbol] :=
  x*(a+b*ArcCos[c+d*x^2])^(n+2)/(4*b^2*(n+1)*(n+2)) - 
  Sqrt[-2*c*d*x^2-d^2*x^4]*(a+b*ArcCos[c+d*x^2])^(n+1)/(2*b*d*(n+1)*x) - 
  1/(4*b^2*(n+1)*(n+2)) \[Star] Int[(a+b*ArcCos[c+d*x^2])^(n+2),x] /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,1] && LtQ[n,-1] && NeQ[n,-2]


(* ::Code:: *)
Int[ArcSin[a_.*x_^p_]^n_./x_,x_Symbol] :=
  1/p \[Star] Subst[Int[x^n*Cot[x],x],x,ArcSin[a*x^p]] /;
FreeQ[{a,p},x] && IGtQ[n,0]


(* ::Code:: *)
Int[ArcCos[a_.*x_^p_]^n_./x_,x_Symbol] :=
  -1/p \[Star] Subst[Int[x^n*Tan[x],x],x,ArcCos[a*x^p]] /;
FreeQ[{a,p},x] && IGtQ[n,0]


(* ::Code:: *)
Int[u_.*ArcSin[c_./(a_.+b_.*x_^n_.)]^m_.,x_Symbol] :=
  Int[u*ArcCsc[a/c+b*x^n/c]^m,x] /;
FreeQ[{a,b,c,n,m},x]


(* ::Code:: *)
Int[u_.*ArcCos[c_./(a_.+b_.*x_^n_.)]^m_.,x_Symbol] :=
  Int[u*ArcSec[a/c+b*x^n/c]^m,x] /;
FreeQ[{a,b,c,n,m},x]


(* ::Code:: *)
Int[ArcSin[Sqrt[1+b_.*x_^2]]^n_./Sqrt[1+b_.*x_^2],x_Symbol] :=
  Sqrt[-b*x^2]/(b*x) \[Star] Subst[Int[ArcSin[x]^n/Sqrt[1-x^2],x],x,Sqrt[1+b*x^2]] /;
FreeQ[{b,n},x]


(* ::Code:: *)
Int[ArcCos[Sqrt[1+b_.*x_^2]]^n_./Sqrt[1+b_.*x_^2],x_Symbol] :=
  Sqrt[-b*x^2]/(b*x) \[Star] Subst[Int[ArcCos[x]^n/Sqrt[1-x^2],x],x,Sqrt[1+b*x^2]] /;
FreeQ[{b,n},x]


(* ::Code:: *)
Int[u_.*f_^(c_.*ArcSin[a_.+b_.*x_]^n_.),x_Symbol] :=
  1/b \[Star] Subst[Int[ReplaceAll[u,x->-a/b+Sin[x]/b]*f^(c*x^n)*Cos[x],x],x,ArcSin[a+b*x]] /;
FreeQ[{a,b,c,f},x] && IGtQ[n,0]


(* ::Code:: *)
Int[u_.*f_^(c_.*ArcCos[a_.+b_.*x_]^n_.),x_Symbol] :=
  -1/b \[Star] Subst[Int[ReplaceAll[u,x->-a/b+Cos[x]/b]*f^(c*x^n)*Sin[x],x],x,ArcCos[a+b*x]] /;
FreeQ[{a,b,c,f},x] && IGtQ[n,0]


(* ::Code:: *)
Int[ArcSin[a_.*x_^2+b_.*Sqrt[c_+d_.*x_^2]],x_Symbol] :=
  x*ArcSin[a*x^2+b*Sqrt[c+d*x^2]] - 
  x*Sqrt[b^2*d+a^2*x^2+2*a*b*Sqrt[c+d*x^2]]/Sqrt[(-x^2)*(b^2*d+a^2*x^2+2*a*b*Sqrt[c+d*x^2])] \[Star] 
    Int[x*(b*d+2*a*Sqrt[c+d*x^2])/(Sqrt[c+d*x^2]*Sqrt[b^2*d +a^2*x^2+2*a*b*Sqrt[c+d*x^2]]),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b^2*c,1]


(* ::Code:: *)
Int[ArcCos[a_.*x_^2+b_.*Sqrt[c_+d_.*x_^2]],x_Symbol] :=
  x*ArcCos[a*x^2+b*Sqrt[c+d*x^2]] + 
  x*Sqrt[b^2*d+a^2*x^2+2*a*b*Sqrt[c+d*x^2]]/Sqrt[(-x^2)*(b^2*d+a^2*x^2+2*a*b*Sqrt[c+d*x^2])] \[Star] 
    Int[x*(b*d+2*a*Sqrt[c+d*x^2])/(Sqrt[c+d*x^2]*Sqrt[b^2*d+a^2*x^2+2*a*b*Sqrt[c+d*x^2]]),x] /;
FreeQ[{a,b,c,d},x] && EqQ[b^2*c,1]


(* ::Code:: *)
Int[ArcSin[u_],x_Symbol] :=
  x*ArcSin[u] -
  Int[SimplifyIntegrand[x*D[u,x]/Sqrt[1-u^2],x],x] /;
InverseFunctionFreeQ[u,x] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[ArcCos[u_],x_Symbol] :=
  x*ArcCos[u] +
  Int[SimplifyIntegrand[x*D[u,x]/Sqrt[1-u^2],x],x] /;
InverseFunctionFreeQ[u,x] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*(a_.+b_.*ArcSin[u_]),x_Symbol] :=
  (c+d*x)^(m+1)*(a+b*ArcSin[u])/(d*(m+1)) -
  b/(d*(m+1)) \[Star] Int[SimplifyIntegrand[(c+d*x)^(m+1)*D[u,x]/Sqrt[1-u^2],x],x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1] && InverseFunctionFreeQ[u,x] && Not[FunctionOfQ[(c+d*x)^(m+1),u,x]] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*(a_.+b_.*ArcCos[u_]),x_Symbol] :=
  (c+d*x)^(m+1)*(a+b*ArcCos[u])/(d*(m+1)) +
  b/(d*(m+1)) \[Star] Int[SimplifyIntegrand[(c+d*x)^(m+1)*D[u,x]/Sqrt[1-u^2],x],x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1] && InverseFunctionFreeQ[u,x] && Not[FunctionOfQ[(c+d*x)^(m+1),u,x]] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[v_*(a_.+b_.*ArcSin[u_]),x_Symbol] :=
  With[{w=IntHide[v,x]},  
  (a+b*ArcSin[u]) \[Star] w -
  b \[Star] Int[SimplifyIntegrand[w*D[u,x]/Sqrt[1-u^2],x],x] /;
 InverseFunctionFreeQ[w,x]] /;
FreeQ[{a,b},x] && InverseFunctionFreeQ[u,x] && Not[MatchQ[v, (c_.+d_.*x)^m_. /; FreeQ[{c,d,m},x]]]


(* ::Code:: *)
Int[v_*(a_.+b_.*ArcCos[u_]),x_Symbol] :=
  With[{w=IntHide[v,x]},  
  (a+b*ArcCos[u]) \[Star] w +
  b \[Star] Int[SimplifyIntegrand[w*D[u,x]/Sqrt[1-u^2],x],x] /;
 InverseFunctionFreeQ[w,x]] /;
FreeQ[{a,b},x] && InverseFunctionFreeQ[u,x] && Not[MatchQ[v, (c_.+d_.*x)^m_. /; FreeQ[{c,d,m},x]]]



