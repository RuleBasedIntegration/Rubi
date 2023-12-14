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
Int[(d1_+e1_.*x_)^p_.*(d2_+e2_.*x_)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  Int[(d1*d2+e1*e2*x^2)^p*(a+b*ArcCosh[c*x])^n,x] /;
FreeQ[{a,b,c,d1,e1,d2,e2,n},x] && EqQ[d2*e1+d1*e2,0] && IntegerQ[p]


(* ::Code:: *)
(* Int[(a_.+b_.*ArcCosh[c_.*x_])^n_./Sqrt[d_+e_.*x_^2],x_Symbol] :=
  1/c*Simp[Sqrt[1+c*x]*Sqrt[-1+c*x]/Sqrt[d+e*x^2]] \[Star] Subst[Int[(a+b*x)^n,x],x,ArcCosh[c*x]] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[c^2*d+e,0] *)


(* ::Code:: *)
Int[1/(Sqrt[d_+e_.*x_^2]*(a_.+b_.*ArcCosh[c_.*x_])),x_Symbol] :=
  1/(b*c)*Simp[Sqrt[1+c*x]*Sqrt[-1+c*x]/Sqrt[d+e*x^2]]*Log[a+b*ArcCosh[c*x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0]


(* ::Code:: *)
Int[1/(Sqrt[d1_+e1_.*x_]*Sqrt[d2_+e2_.*x_]*(a_.+b_.*ArcCosh[c_.*x_])),x_Symbol] :=
  1/(b*c)*Simp[Sqrt[1+c*x]/Sqrt[d1+e1*x]]*Simp[Sqrt[-1+c*x]/Sqrt[d2+e2*x]]*Log[a+b*ArcCosh[c*x]] /;
FreeQ[{a,b,c,d1,e1,d2,e2},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2]


(* ::Code:: *)
Int[(a_.+b_.*ArcCosh[c_.*x_])^n_./Sqrt[d_+e_.*x_^2],x_Symbol] :=
  1/(b*c*(n+1))*Simp[Sqrt[1+c*x]*Sqrt[-1+c*x]/Sqrt[d+e*x^2]]*(a+b*ArcCosh[c*x])^(n+1) /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[c^2*d+e,0] && NeQ[n,-1]


(* ::Code:: *)
Int[(a_.+b_.*ArcCosh[c_.*x_])^n_./(Sqrt[d1_+e1_.*x_]*Sqrt[d2_+e2_.*x_]),x_Symbol] :=
  1/(b*c*(n+1))*Simp[Sqrt[1+c*x]/Sqrt[d1+e1*x]]*Simp[Sqrt[-1+c*x]/Sqrt[d2+e2*x]]*(a+b*ArcCosh[c*x])^(n+1) /;
FreeQ[{a,b,c,d1,e1,d2,e2,n},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && NeQ[n,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_]),x_Symbol] :=
  With[{u=IntHide[(d+e*x^2)^p,x]},  
  (a+b*ArcCosh[c*x]) \[Star] u - b*c \[Star] Int[SimplifyIntegrand[u/(Sqrt[1+c*x]*Sqrt[-1+c*x]),x],x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0] && IGtQ[p,0]


(* ::Code:: *)
Int[Sqrt[d_+e_.*x_^2]*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  x*Sqrt[d+e*x^2]*(a+b*ArcCosh[c*x])^n/2 - 
  b*c*n/2*Simp[Sqrt[d+e*x^2]/(Sqrt[1+c*x]*Sqrt[-1+c*x])] \[Star] Int[x*(a+b*ArcCosh[c*x])^(n-1),x] - 
  1/2*Simp[Sqrt[d+e*x^2]/(Sqrt[1+c*x]*Sqrt[-1+c*x])] \[Star] Int[(a+b*ArcCosh[c*x])^n/(Sqrt[1+c*x]*Sqrt[-1+c*x]),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0] && GtQ[n,0]


(* ::Code:: *)
Int[Sqrt[d1_+e1_.*x_]*Sqrt[d2_+e2_.*x_]*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  x*Sqrt[d1+e1*x]*Sqrt[d2+e2*x]*(a+b*ArcCosh[c*x])^n/2 - 
  b*c*n/2*Simp[Sqrt[d1+e1*x]/Sqrt[1+c*x]]*Simp[Sqrt[d2+e2*x]/Sqrt[-1+c*x]] \[Star] 
    Int[x*(a+b*ArcCosh[c*x])^(n-1),x] - 
  1/2*Simp[Sqrt[d1+e1*x]/Sqrt[1+c*x]]*Simp[Sqrt[d2+e2*x]/Sqrt[-1+c*x]] \[Star] 
    Int[(a+b*ArcCosh[c*x])^n/(Sqrt[1+c*x]*Sqrt[-1+c*x]),x] /;
FreeQ[{a,b,c,d1,e1,d2,e2},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && GtQ[n,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  x*(d+e*x^2)^p*(a+b*ArcCosh[c*x])^n/(2*p+1) + 
  2*d*p/(2*p+1) \[Star] Int[(d+e*x^2)^(p-1)*(a+b*ArcCosh[c*x])^n,x] - 
  b*c*n/(2*p+1)*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)] \[Star] 
    Int[x*(1+c*x)^(p-1/2)*(-1+c*x)^(p-1/2)*(a+b*ArcCosh[c*x])^(n-1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0] && GtQ[n,0] && GtQ[p,0]


(* ::Code:: *)
Int[(d1_+e1_.*x_)^p_.*(d2_+e2_.*x_)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  x*(d1+e1*x)^p*(d2+e2*x)^p*(a+b*ArcCosh[c*x])^n/(2*p+1) + 
  2*d1*d2*p/(2*p+1) \[Star] Int[(d1+e1*x)^(p-1)*(d2+e2*x)^(p-1)*(a+b*ArcCosh[c*x])^n,x] - 
  b*c*n/(2*p+1)*Simp[(d1+e1*x)^p/(1+c*x)^p]*Simp[(d2+e2*x)^p/(-1+c*x)^p] \[Star] 
    Int[x*(1+c*x)^(p-1/2)*(-1+c*x)^(p-1/2)*(a+b*ArcCosh[c*x])^(n-1),x] /;
FreeQ[{a,b,c,d1,e1,d2,e2},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && GtQ[n,0] && GtQ[p,0]


(* ::Code:: *)
Int[(a_.+b_.*ArcCosh[c_.*x_])^n_./(d_+e_.*x_^2)^(3/2),x_Symbol] :=
  x*(a+b*ArcCosh[c*x])^n/(d*Sqrt[d+e*x^2]) + 
  b*c*n/d*Simp[Sqrt[1+c*x]*Sqrt[-1+c*x]/Sqrt[d+e*x^2]] \[Star] Int[x*(a+b*ArcCosh[c*x])^(n-1)/(1-c^2*x^2),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0] && GtQ[n,0]


(* ::Code:: *)
Int[(a_.+b_.*ArcCosh[c_.*x_])^n_./((d1_+e1_.*x_)^(3/2)*(d2_+e2_.*x_)^(3/2)),x_Symbol] :=
  x*(a+b*ArcCosh[c*x])^n/(d1*d2*Sqrt[d1+e1*x]*Sqrt[d2+e2*x]) + 
  b*c*n/(d1*d2)*Simp[Sqrt[1+c*x]/Sqrt[d1+e1*x]]*Simp[Sqrt[-1+c*x]/Sqrt[d2+e2*x]] \[Star] 
    Int[x*(a+b*ArcCosh[c*x])^(n-1)/(1-c^2*x^2),x] /;
FreeQ[{a,b,c,d1,e1,d2,e2},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && GtQ[n,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  -x*(d+e*x^2)^(p+1)*(a+b*ArcCosh[c*x])^n/(2*d*(p+1)) + 
  (2*p+3)/(2*d*(p+1)) \[Star] Int[(d+e*x^2)^(p+1)*(a+b*ArcCosh[c*x])^n,x] - 
  b*c*n/(2*(p+1))*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)] \[Star] 
    Int[x*(1+c*x)^(p+1/2)*(-1+c*x)^(p+1/2)*(a+b*ArcCosh[c*x])^(n-1),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0] && GtQ[n,0] && LtQ[p,-1] && NeQ[p,-3/2]


(* ::Code:: *)
Int[(d1_+e1_.*x_)^p_*(d2_+e2_.*x_)^p_*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  -x*(d1+e1*x)^(p+1)*(d2+e2*x)^(p+1)*(a+b*ArcCosh[c*x])^n/(2*d1*d2*(p+1)) + 
  (2*p+3)/(2*d1*d2*(p+1)) \[Star] Int[(d1+e1*x)^(p+1)*(d2+e2*x)^(p+1)*(a+b*ArcCosh[c*x])^n,x] - 
  b*c*n/(2*(p+1))*Simp[(d1+e1*x)^p/(1+c*x)^p]*Simp[(d2+e2*x)^p/(-1+c*x)^p] \[Star] 
    Int[x*(1+c*x)^(p+1/2)*(-1+c*x)^(p+1/2)*(a+b*ArcCosh[c*x])^(n-1),x] /;
FreeQ[{a,b,c,d1,e1,d2,e2},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && GtQ[n,0] && LtQ[p,-1] && NeQ[p,-3/2]


(* ::Code:: *)
Int[(a_.+b_.*ArcCosh[c_.*x_])^n_./(d_+e_.*x_^2),x_Symbol] :=
  -1/(c*d) \[Star] Subst[Int[(a+b*x)^n*Csch[x],x],x,ArcCosh[c*x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c^2*d+e,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_,x_Symbol] :=
  Simp[Sqrt[1+c*x]*Sqrt[-1+c*x]*(d+e*x^2)^p]*(a+b*ArcCosh[c*x])^(n+1)/(b*c*(n+1)) - 
  c*(2*p+1)/(b*(n+1))*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)] \[Star] 
    Int[x*(1+c*x)^(p-1/2)*(-1+c*x)^(p-1/2)*(a+b*ArcCosh[c*x])^(n+1),x] /;
FreeQ[{a,b,c,d,e,p},x] && EqQ[c^2*d+e,0] && LtQ[n,-1] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d1_+e1_.*x_)^p_.*(d2_+e2_.*x_)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_,x_Symbol] :=
  Sqrt[1+c*x]*Sqrt[-1+c*x]*(d1+e1*x)^p*(d2+e2*x)^p*(a+b*ArcCosh[c*x])^(n+1)/(b*c*(n+1)) - 
  c*(2*p+1)/(b*(n+1))*Simp[(d1+e1*x)^p/(1+c*x)^p]*Simp[(d2+e2*x)^p/(-1+c*x)^p] \[Star] 
    Int[x*(-1+c^2*x^2)^(p-1/2)*(a+b*ArcCosh[c*x])^(n+1),x] /;
FreeQ[{a,b,c,d1,e1,d2,e2,p},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && LtQ[n,-1] && IntegerQ[p+1/2]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  1/(b*c)*Simp[(d+e*x^2)^p/((1+c*x)^p*(-1+c*x)^p)] \[Star] Subst[Int[x^n*Sinh[-a/b+x/b]^(2*p+1),x],x,a+b*ArcCosh[c*x]] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[c^2*d+e,0] && IGtQ[2*p,0]


(* ::Code:: *)
Int[(d1_+e1_.*x_)^p_.*(d2_+e2_.*x_)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  1/(b*c)*Simp[(d1+e1*x)^p/(1+c*x)^p]*Simp[(d2+e2*x)^p/(-1+c*x)^p] \[Star] Subst[Int[x^n*Sinh[-a/b+x/b]^(2*p+1),x],x,a+b*ArcCosh[c*x]] /;
FreeQ[{a,b,c,d1,e1,d2,e2,n},x] && EqQ[e1,c*d1] && EqQ[e2,-c*d2] && IGtQ[2*p,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_]),x_Symbol] :=
  With[{u=IntHide[(d+e*x^2)^p,x]},  
  (a+b*ArcCosh[c*x]) \[Star] u - b*c \[Star] Int[SimplifyIntegrand[u/(Sqrt[1+c*x]*Sqrt[-1+c*x]),x],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[c^2*d+e,0] && (IGtQ[p,0] || ILtQ[p+1/2,0])


(* ::Code:: *)
(* Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_,x_Symbol] :=
  1/(b*c^(2*p+1)) \[Star] Subst[Int[x^n*(c^2*d+e*Cosh[-a/b+x/b]^2)^p*Sinh[-a/b+x/b],x],x,a+b*ArcCosh[c*x]] /;
FreeQ[{a,b,c,d,e,n},x] && IGtQ[p,0] *)


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  Int[ExpandIntegrand[(a+b*ArcCosh[c*x])^n,(d+e*x^2)^p,x],x] /;
FreeQ[{a,b,c,d,e,n},x] && NeQ[c^2*d+e,0] && IntegerQ[p] && (p>0 || IGtQ[n,0])


(* ::Code:: *)
Int[(d_+e_.*x_^2)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  Unintegrable[(d+e*x^2)^p*(a+b*ArcCosh[c*x])^n,x] /;
FreeQ[{a,b,c,d,e,n,p},x]


(* ::Code:: *)
Int[(d1_+e1_.*x_)^p_.*(d2_+e2_.*x_)^p_.*(a_.+b_.*ArcCosh[c_.*x_])^n_.,x_Symbol] :=
  Unintegrable[(d1+e1*x)^p*(d2+e2*x)^p*(a+b*ArcCosh[c*x])^n,x] /;
FreeQ[{a,b,c,d1,e1,d2,e2,n,p},x]



