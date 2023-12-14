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
Int[ArcSech[c_+d_.*x_],x_Symbol] :=
  (c+d*x)*ArcSech[c+d*x]/d + 
  Int[Sqrt[(1-c-d*x)/(1+c+d*x)]/(1-c-d*x),x] /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[ArcCsch[c_+d_.*x_],x_Symbol] :=
  (c+d*x)*ArcCsch[c+d*x]/d + 
  Int[1/((c+d*x)*Sqrt[1+1/(c+d*x)^2]),x] /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[(a_.+b_.*ArcSech[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(a+b*ArcSech[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(a_.+b_.*ArcCsch[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(a+b*ArcCsch[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(a_.+b_.*ArcSech[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(a+b*ArcSech[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(a_.+b_.*ArcCsch[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(a+b*ArcCsch[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcSech[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(f*x/d)^m*(a+b*ArcSech[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m},x] && EqQ[d*e-c*f,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCsch[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d \[Star] Subst[Int[(f*x/d)^m*(a+b*ArcCsch[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m},x] && EqQ[d*e-c*f,0] && IGtQ[p,0]


(* ::Code:: *)
(* Int[x_^m_.*ArcSech[a_+b_.*x_],x_Symbol] :=
  -((-a)^(m+1)-b^(m+1)*x^(m+1))*ArcSech[a+b*x]/(b^(m+1)*(m+1)) + 
  1/(b^(m+1)*(m+1)) \[Star] Subst[Int[((-a*x)^(m+1)-(1-a*x)^(m+1))/(x^(m+1)*Sqrt[-1+x]*Sqrt[1+x]),x],x,1/(a+b*x)] /;
FreeQ[{a,b},x] && IntegerQ[m] && NeQ[m,-1] *)


(* ::Code:: *)
(* Int[x_^m_.*ArcCsch[a_+b_.*x_],x_Symbol] :=
  -((-a)^(m+1)-b^(m+1)*x^(m+1))*ArcCsch[a+b*x]/(b^(m+1)*(m+1)) + 
  1/(b^(m+1)*(m+1)) \[Star] Subst[Int[((-a*x)^(m+1)-(1-a*x)^(m+1))/(x^(m+1)*Sqrt[1+x^2]),x],x,1/(a+b*x)] /;
FreeQ[{a,b},x] && IntegerQ[m] && NeQ[m,-1] *)


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcSech[c_+d_.*x_])^p_.,x_Symbol] :=
  -1/d^(m+1) \[Star] Subst[Int[(a+b*x)^p*Sech[x]*Tanh[x]*(d*e-c*f+f*Sech[x])^m,x],x,ArcSech[c+d*x]] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[p,0] && IntegerQ[m]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCsch[c_+d_.*x_])^p_.,x_Symbol] :=
  -1/d^(m+1) \[Star] Subst[Int[(a+b*x)^p*Csch[x]*Coth[x]*(d*e-c*f+f*Csch[x])^m,x],x,ArcCsch[c+d*x]] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[p,0] && IntegerQ[m]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcSech[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcSech[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCsch[c_+d_.*x_])^p_.,x_Symbol] :=
  1/d \[Star] Subst[Int[((d*e-c*f)/d+f*x/d)^m*(a+b*ArcCsch[x])^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,m},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcSech[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(e+f*x)^m*(a+b*ArcSech[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,e,f,m,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_.+b_.*ArcCsch[c_+d_.*x_])^p_,x_Symbol] :=
  Unintegrable[(e+f*x)^m*(a+b*ArcCsch[c+d*x])^p,x] /;
FreeQ[{a,b,c,d,e,f,m,p},x] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[u_.*ArcSech[c_./(a_.+b_.*x_^n_.)]^m_.,x_Symbol] :=
  Int[u*ArcCosh[a/c+b*x^n/c]^m,x] /;
FreeQ[{a,b,c,n,m},x]


(* ::Code:: *)
Int[u_.*ArcCsch[c_./(a_.+b_.*x_^n_.)]^m_.,x_Symbol] :=
  Int[u*ArcSinh[a/c+b*x^n/c]^m,x] /;
FreeQ[{a,b,c,n,m},x]


(* ::Code:: *)
Int[E^ArcSech[a_.*x_], x_Symbol] :=
  x*E^ArcSech[a*x] + Log[x]/a + 1/a \[Star] Int[1/(x*(1-a*x))*Sqrt[(1-a*x)/(1+a*x)],x] /;
FreeQ[a,x]


(* ::Code:: *)
Int[E^ArcSech[a_.*x_^p_], x_Symbol] :=
  x*E^ArcSech[a*x^p] + 
  p/a \[Star] Int[1/x^p,x] + 
  p*Sqrt[1+a*x^p]/a*Sqrt[1/(1+a*x^p)] \[Star] Int[1/(x^p*Sqrt[1+a*x^p]*Sqrt[1-a*x^p]),x] /;
FreeQ[{a,p},x]


(* ::Code:: *)
Int[E^ArcCsch[a_.*x_^p_.], x_Symbol] :=
  1/a \[Star] Int[1/x^p,x] + Int[Sqrt[1+1/(a^2*x^(2*p))],x] /;
FreeQ[{a,p},x]


(* ::Code:: *)
Int[E^(n_.*ArcSech[u_]), x_Symbol] :=
  Int[(1/u + Sqrt[(1-u)/(1+u)] + 1/u*Sqrt[(1-u)/(1+u)])^n,x] /;
IntegerQ[n]


(* ::Code:: *)
Int[E^(n_.*ArcCsch[u_]), x_Symbol] :=
  Int[(1/u + Sqrt[1+1/u^2])^n,x] /;
IntegerQ[n]


(* ::Code:: *)
Int[E^ArcSech[a_.*x_^p_.]/x_, x_Symbol] :=
  -1/(a*p*x^p) + 
  Sqrt[1+a*x^p]/a*Sqrt[1/(1+a*x^p)] \[Star] Int[Sqrt[1+a*x^p]*Sqrt[1-a*x^p]/x^(p+1),x] /;
FreeQ[{a,p},x]


(* ::Code:: *)
Int[x_^m_.*E^ArcSech[a_.*x_^p_.], x_Symbol] :=
  x^(m+1)*E^ArcSech[a*x^p]/(m+1) + 
  p/(a*(m+1)) \[Star] Int[x^(m-p),x] + 
  p*Sqrt[1+a*x^p]/(a*(m+1))*Sqrt[1/(1+a*x^p)] \[Star] Int[x^(m-p)/(Sqrt[1+a*x^p]*Sqrt[1-a*x^p]),x] /;
FreeQ[{a,m,p},x] && NeQ[m,-1]


(* ::Code:: *)
Int[x_^m_.*E^ArcCsch[a_.*x_^p_.], x_Symbol] :=
  1/a \[Star] Int[x^(m-p),x] + Int[x^m*Sqrt[1+1/(a^2*x^(2*p))],x] /;
FreeQ[{a,m,p},x]


(* ::Code:: *)
Int[x_^m_.*E^(n_.*ArcSech[u_]), x_Symbol] :=
  Int[x^m*(1/u + Sqrt[(1-u)/(1+u)] + 1/u*Sqrt[(1-u)/(1+u)])^n,x] /;
FreeQ[m,x] && IntegerQ[n]


(* ::Code:: *)
Int[x_^m_.*E^(n_.*ArcCsch[u_]), x_Symbol] :=
  Int[x^m*(1/u + Sqrt[1+1/u^2])^n,x] /;
FreeQ[m,x] && IntegerQ[n]


(* ::Code:: *)
Int[E^(ArcSech[c_.*x_])/(a_+b_.*x_^2), x_Symbol] :=
  1/(a*c) \[Star] Int[Sqrt[1/(1+c*x)]/(x*Sqrt[1-c*x]),x] + 1/c \[Star] Int[1/(x*(a+b*x^2)),x] /;
FreeQ[{a,b,c},x] && EqQ[b+a*c^2,0]


(* ::Code:: *)
Int[E^(ArcCsch[c_.*x_])/(a_+b_.*x_^2), x_Symbol] :=
  1/(a*c^2) \[Star] Int[1/(x^2*Sqrt[1+1/(c^2*x^2)]),x] + 1/c \[Star] Int[1/(x*(a+b*x^2)),x] /;
FreeQ[{a,b,c},x] && EqQ[b-a*c^2,0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*E^(ArcSech[c_.*x_])/(a_+b_.*x_^2), x_Symbol] :=
  d/(a*c) \[Star] Int[(d*x)^(m-1)*Sqrt[1/(1+c*x)]/Sqrt[1-c*x],x] + d/c \[Star] Int[(d*x)^(m-1)/(a+b*x^2),x] /;
FreeQ[{a,b,c,d,m},x] && EqQ[b+a*c^2,0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*E^(ArcCsch[c_.*x_])/(a_+b_.*x_^2), x_Symbol] :=
  d^2/(a*c^2) \[Star] Int[(d*x)^(m-2)/Sqrt[1+1/(c^2*x^2)],x] + d/c \[Star] Int[(d*x)^(m-1)/(a+b*x^2),x] /;
FreeQ[{a,b,c,d,m},x] && EqQ[b-a*c^2,0]


(* ::Code:: *)
Int[ArcSech[u_],x_Symbol] :=
  x*ArcSech[u] +
  Sqrt[1-u^2]/(u*Sqrt[-1+1/u]*Sqrt[1+1/u]) \[Star] Int[SimplifyIntegrand[x*D[u,x]/(u*Sqrt[1-u^2]),x],x] /;
InverseFunctionFreeQ[u,x] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[ArcCsch[u_],x_Symbol] :=
  x*ArcCsch[u] -
  u/Sqrt[-u^2] \[Star] Int[SimplifyIntegrand[x*D[u,x]/(u*Sqrt[-1-u^2]),x],x] /;
InverseFunctionFreeQ[u,x] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*(a_.+b_.*ArcSech[u_]),x_Symbol] :=
  (c+d*x)^(m+1)*(a+b*ArcSech[u])/(d*(m+1)) + 
  b*Sqrt[1-u^2]/(d*(m+1)*u*Sqrt[-1+1/u]*Sqrt[1+1/u]) \[Star] Int[SimplifyIntegrand[(c+d*x)^(m+1)*D[u,x]/(u*Sqrt[1-u^2]),x],x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1] && InverseFunctionFreeQ[u,x] && Not[FunctionOfQ[(c+d*x)^(m+1),u,x]] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*(a_.+b_.*ArcCsch[u_]),x_Symbol] :=
  (c+d*x)^(m+1)*(a+b*ArcCsch[u])/(d*(m+1)) - 
  b*u/(d*(m+1)*Sqrt[-u^2]) \[Star] Int[SimplifyIntegrand[(c+d*x)^(m+1)*D[u,x]/(u*Sqrt[-1-u^2]),x],x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1] && InverseFunctionFreeQ[u,x] && Not[FunctionOfQ[(c+d*x)^(m+1),u,x]] && Not[FunctionOfExponentialQ[u,x]]


(* ::Code:: *)
Int[v_*(a_.+b_.*ArcSech[u_]),x_Symbol] :=
  With[{w=IntHide[v,x]},  
  (a+b*ArcSech[u]) \[Star] w + b*Sqrt[1-u^2]/(u*Sqrt[-1+1/u]*Sqrt[1+1/u]) \[Star] Int[SimplifyIntegrand[w*D[u,x]/(u*Sqrt[1-u^2]),x],x] /;
 InverseFunctionFreeQ[w,x]] /;
FreeQ[{a,b},x] && InverseFunctionFreeQ[u,x] && Not[MatchQ[v, (c_.+d_.*x)^m_. /; FreeQ[{c,d,m},x]]]


(* ::Code:: *)
Int[v_*(a_.+b_.*ArcCsch[u_]),x_Symbol] :=
  With[{w=IntHide[v,x]},  
  (a+b*ArcCsch[u]) \[Star] w - b*u/Sqrt[-u^2] \[Star] Int[SimplifyIntegrand[w*D[u,x]/(u*Sqrt[-1-u^2]),x],x] /;
 InverseFunctionFreeQ[w,x]] /;
FreeQ[{a,b},x] && InverseFunctionFreeQ[u,x] && Not[MatchQ[v, (c_.+d_.*x)^m_. /; FreeQ[{c,d,m},x]]]



