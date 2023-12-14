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
Int[(a_.+b_.*ArcSinh[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(a+b*ArcSinh[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcSinh[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcSinh[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m,n},x]


(* ::Code:: *)
Int[(A_.+B_.*x_+C_.*x_^2)^p_.*(a_.+b_.*ArcSinh[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(C/d^2+C/d^2*x^2)^p*(a+b*ArcSinh[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,A,B,C,n,p},x] && EqQ[B*(1+c^2)-2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(A_.+B_.*x_+C_.*x_^2)^p_.*(a_.+b_.*ArcSinh[c_+d_.*x_])^n_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(C/d^2+C/d^2*x^2)^p*(a+b*ArcSinh[x])^n,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,A,B,C,m,n,p},x] && EqQ[B*(1+c^2)-2*A*c*d,0] && EqQ[2*c*C-B*d,0]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*ArcSinh[c_+d_.*x_^2]],x_Symbol] :=
  x*Sqrt[a+b*ArcSinh[c+d*x^2]] - 
  Sqrt[Pi]*x*(Cosh[a/(2*b)]-c*Sinh[a/(2*b)])*FresnelC[Sqrt[-c/(Pi*b)]*Sqrt[a+b*ArcSinh[c+d*x^2]]]/
    (Sqrt[-(c/b)]*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2])) + 
  Sqrt[Pi]*x*(Cosh[a/(2*b)]+c*Sinh[a/(2*b)])*FresnelS[Sqrt[-c/(Pi*b)]*Sqrt[a+b*ArcSinh[c+d*x^2]]]/
    (Sqrt[-(c/b)]*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1]


(* ::Code:: *)
Int[(a_.+b_.*ArcSinh[c_+d_.*x_^2])^n_,x_Symbol] :=
  x*(a+b*ArcSinh[c+d*x^2])^n - 
  2*b*n*Sqrt[2*c*d*x^2+d^2*x^4]*(a+b*ArcSinh[c+d*x^2])^(n-1)/(d*x) + 
  4*b^2*n*(n-1) \[Star] Int[(a+b*ArcSinh[c+d*x^2])^(n-2),x] /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1] && GtQ[n,1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcSinh[c_+d_.*x_^2]),x_Symbol] :=
  x*(c*Cosh[a/(2*b)]-Sinh[a/(2*b)])*CoshIntegral[(a+b*ArcSinh[c+d*x^2])/(2*b)]/
    (2*b*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[(1/2)*ArcSinh[c+d*x^2]])) + 
  x*(Cosh[a/(2*b)]-c*Sinh[a/(2*b)])*SinhIntegral[(a+b*ArcSinh[c+d*x^2])/(2*b)]/
    (2*b*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[(1/2)*ArcSinh[c+d*x^2]])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*ArcSinh[c_+d_.*x_^2]],x_Symbol] :=
  (c+1)*Sqrt[Pi/2]*x*(Cosh[a/(2*b)]-Sinh[a/(2*b)])*Erfi[Sqrt[a+b*ArcSinh[c+d*x^2]]/Sqrt[2*b]]/
    (2*Sqrt[b]*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2])) + 
  (c-1)*Sqrt[Pi/2]*x*(Cosh[a/(2*b)]+Sinh[a/(2*b)])*Erf[Sqrt[a+b*ArcSinh[c+d*x^2]]/Sqrt[2*b]]/
    (2*Sqrt[b]*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcSinh[c_+d_.*x_^2])^(3/2),x_Symbol] :=
  -Sqrt[2*c*d*x^2+d^2*x^4]/(b*d*x*Sqrt[a+b*ArcSinh[c+d*x^2]]) - 
  (-c/b)^(3/2)*Sqrt[Pi]*x*(Cosh[a/(2*b)]-c*Sinh[a/(2*b)])*FresnelC[Sqrt[-c/(Pi*b)]*Sqrt[a+b*ArcSinh[c+d*x^2]]]/
    (Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2]) + 
  (-c/b)^(3/2)*Sqrt[Pi]*x*(Cosh[a/(2*b)]+c*Sinh[a/(2*b)])*FresnelS[Sqrt[-c/(Pi*b)]*Sqrt[a+b*ArcSinh[c+d*x^2]]]/
    (Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2]) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1]


(* ::Code:: *)
Int[1/(a_.+b_.*ArcSinh[c_+d_.*x_^2])^2,x_Symbol] :=
  -Sqrt[2*c*d*x^2+d^2*x^4]/(2*b*d*x*(a+b*ArcSinh[c+d*x^2])) + 
  x*(Cosh[a/(2*b)]-c*Sinh[a/(2*b)])*CoshIntegral[(a+b*ArcSinh[c+d*x^2])/(2*b)]/
    (4*b^2*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2])) + 
  x*(c*Cosh[a/(2*b)]-Sinh[a/(2*b)])*SinhIntegral[(a+b*ArcSinh[c+d*x^2])/(2*b)]/
    (4*b^2*(Cosh[ArcSinh[c+d*x^2]/2]+c*Sinh[ArcSinh[c+d*x^2]/2])) /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1]


(* ::Code:: *)
Int[(a_.+b_.*ArcSinh[c_+d_.*x_^2])^n_,x_Symbol] :=
  -x*(a+b*ArcSinh[c+d*x^2])^(n+2)/(4*b^2*(n+1)*(n+2)) + 
  Sqrt[2*c*d*x^2+d^2*x^4]*(a+b*ArcSinh[c+d*x^2])^(n+1)/(2*b*d*(n+1)*x) + 
  1/(4*b^2*(n+1)*(n+2)) \[Star] Int[(a+b*ArcSinh[c+d*x^2])^(n+2),x] /;
FreeQ[{a,b,c,d},x] && EqQ[c^2,-1] && LtQ[n,-1] && NeQ[n,-2]


(* ::Code:: *)
Int[ArcSinh[a_.*x_^p_]^n_./x_,x_Symbol] :=
  1/p \[Star] Subst[Int[x^n*Coth[x],x],x,ArcSinh[a*x^p]] /;
FreeQ[{a,p},x] && IGtQ[n,0]


(* ::Code:: *)
Int[u_.*ArcSinh[c_./(a_.+b_.*x_^n_.)]^m_.,x_Symbol] :=
  Int[u*ArcCsch[a/c+b*x^n/c]^m,x] /;
FreeQ[{a,b,c,n,m},x]


(* ::Code:: *)
Int[ArcSinh[Sqrt[-1+b_.*x_^2]]^n_./Sqrt[-1+b_.*x_^2],x_Symbol] :=
  Sqrt[b*x^2]/(b*x) \[Star] Subst[Int[ArcSinh[x]^n/Sqrt[1+x^2],x],x,Sqrt[-1+b*x^2]] /;
FreeQ[{b,n},x]


(* ::Code:: *)
Int[f_^(c_.*ArcSinh[a_.+b_.*x_]^n_.),x_Symbol] :=
  1/b \[Star] Subst[Int[f^(c*x^n)*Cosh[x],x],x,ArcSinh[a+b*x]] /;
FreeQ[{a,b,c,f},x] && IGtQ[n,0]


(* ::Code:: *)
Int[x_^m_.*f_^(c_.*ArcSinh[a_.+b_.*x_]^n_.),x_Symbol] :=
  1/b \[Star] Subst[Int[(-a/b+Sinh[x]/b)^m*f^(c*x^n)*Cosh[x],x],x,ArcSinh[a+b*x]] /;
FreeQ[{a,b,c,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[ArcSinh[u_],x_Symbol] :=
  x*ArcSinh[u] -
  Int[SimplifyIntegrand[x*D[u,x]/Sqrt[1+u^2],x],x] /;
InverseFunctionFreeQ[u,x] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*(a_.+b_.*ArcSinh[u_]),x_Symbol] :=
  (c+d*x)^(m+1)*(a+b*ArcSinh[u])/(d*(m+1)) -
  b/(d*(m+1)) \[Star] Int[SimplifyIntegrand[(c+d*x)^(m+1)*D[u,x]/Sqrt[1+u^2],x],x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1] && InverseFunctionFreeQ[u,x] && Not[FunctionOfQ[(c+d*x)^(m+1),u,x]] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[v_*(a_.+b_.*ArcSinh[u_]),x_Symbol] :=
  With[{w=IntHide[v,x]},  
  (a+b*ArcSinh[u]) \[Star] w - b \[Star] Int[SimplifyIntegrand[w*D[u,x]/Sqrt[1+u^2],x],x] /;
 InverseFunctionFreeQ[w,x]] /;
FreeQ[{a,b},x] && InverseFunctionFreeQ[u,x] && Not[MatchQ[v, (c_.+d_.*x)^m_. /; FreeQ[{c,d,m},x]]]


(* ::Code:: *)
Int[E^(n_.*ArcSinh[u_]), x_Symbol] :=
  Int[(u+Sqrt[1+u^2])^n,x] /;
IntegerQ[n] && PolyQ[u,x]


(* ::Code:: *)
Int[x_^m_.*E^(n_.*ArcSinh[u_]), x_Symbol] :=
  Int[x^m*(u+Sqrt[1+u^2])^n,x] /;
RationalQ[m] && IntegerQ[n] && PolyQ[u,x]



