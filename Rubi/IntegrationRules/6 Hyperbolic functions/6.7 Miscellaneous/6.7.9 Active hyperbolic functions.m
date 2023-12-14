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
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-1),x] - a/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-1),x] - a/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  -(e+f*x)^(m+1)/(b*f*(m+1)) + 2 \[Star] Int[(e+f*x)^m*E^(c+d*x)/(a+b*E^(c+d*x)),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && EqQ[a^2+b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  -(e+f*x)^(m+1)/(b*f*(m+1)) + 2 \[Star] Int[(e+f*x)^m*E^(c+d*x)/(a+b*E^(c+d*x)),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && EqQ[a^2-b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  -(e+f*x)^(m+1)/(b*f*(m+1)) + 
  Int[(e+f*x)^m*E^(c+d*x)/(a-Rt[a^2+b^2,2]+b*E^(c+d*x)),x] + 
  Int[(e+f*x)^m*E^(c+d*x)/(a+Rt[a^2+b^2,2]+b*E^(c+d*x)),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && NeQ[a^2+b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  -(e+f*x)^(m+1)/(b*f*(m+1)) + 
  Int[(e+f*x)^m*E^(c+d*x)/(a-Rt[a^2-b^2,2]+b*E^(c+d*x)),x] + 
  Int[(e+f*x)^m*E^(c+d*x)/(a+Rt[a^2-b^2,2]+b*E^(c+d*x)),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && NeQ[a^2-b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]^n_/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-2),x] + 
  1/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-2)*Sinh[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f,m},x] && IGtQ[n,1] && EqQ[a^2+b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]^n_/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  -1/a \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-2),x] + 
  1/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-2)*Cosh[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f,m},x] && IGtQ[n,1] && EqQ[a^2-b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]^n_/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  -a/b^2 \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-2),x] + 
  1/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-2)*Sinh[c+d*x],x] + 
  (a^2+b^2)/b^2 \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(n-2)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[n,1] && NeQ[a^2+b^2,0] && IGtQ[m,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]^n_/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  -a/b^2 \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-2),x] + 
  1/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-2)*Cosh[c+d*x],x] + 
  (a^2-b^2)/b^2 \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(n-2)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[n,1] && NeQ[a^2-b^2,0] && IGtQ[m,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Tanh[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Sech[c+d*x]*Tanh[c+d*x]^(n-1),x] - a/b \[Star] Int[(e+f*x)^m*Sech[c+d*x]*Tanh[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Coth[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Csch[c+d*x]*Coth[c+d*x]^(n-1),x] - a/b \[Star] Int[(e+f*x)^m*Csch[c+d*x]*Coth[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Coth[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Coth[c+d*x]^n,x] - b/a \[Star] Int[(e+f*x)^m*Cosh[c+d*x]*Coth[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Tanh[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Tanh[c+d*x]^n,x] - b/a \[Star] Int[(e+f*x)^m*Sinh[c+d*x]*Tanh[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sech[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(n+2),x] + 
  1/b \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(n+1)*Tanh[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f,n},x] && IGtQ[m,0] && EqQ[a^2+b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Csch[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  -1/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(n+2),x] + 
  1/b \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(n+1)*Coth[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f,n},x] && IGtQ[m,0] && EqQ[a^2-b^2,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sech[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  b^2/(a^2+b^2) \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(n-2)/(a+b*Sinh[c+d*x]),x] + 
  1/(a^2+b^2) \[Star] Int[(e+f*x)^m*Sech[c+d*x]^n*(a-b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && NeQ[a^2+b^2,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Csch[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  b^2/(a^2-b^2) \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(n-2)/(a+b*Cosh[c+d*x]),x] + 
  1/(a^2-b^2) \[Star] Int[(e+f*x)^m*Csch[c+d*x]^n*(a-b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && NeQ[a^2-b^2,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Csch[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^n,x] - b/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sech[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^n,x] - b/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  Unintegrable[(e+f*x)^m*F[c+d*x]^n/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f,m,n},x] && HyperbolicQ[F]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  Unintegrable[(e+f*x)^m*F[c+d*x]^n/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f,m,n},x] && HyperbolicQ[F]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]^p_.*Sinh[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^p*Sinh[c+d*x]^(n-1),x] - 
  a/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^p*Sinh[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]^p_.*Cosh[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^p*Cosh[c+d*x]^(n-1),x] - 
  a/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^p*Cosh[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]^p_.*Tanh[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(p-1)*Tanh[c+d*x]^n,x] - 
  a/b \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(p-1)*Tanh[c+d*x]^n/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]^p_.*Coth[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(p-1)*Coth[c+d*x]^n,x] - 
  a/b \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(p-1)*Coth[c+d*x]^n/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sech[c_.+d_.*x_]^p_.*Tanh[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(p+1)*Tanh[c+d*x]^(n-1),x] - 
  a/b \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(p+1)*Tanh[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Csch[c_.+d_.*x_]^p_.*Coth[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/b \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(p+1)*Coth[c+d*x]^(n-1),x] - 
  a/b \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(p+1)*Coth[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[c_.+d_.*x_]^p_.*Coth[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^p*Coth[c+d*x]^n,x] - 
  b/a \[Star] Int[(e+f*x)^m*Cosh[c+d*x]^(p+1)*Coth[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[c_.+d_.*x_]^p_.*Tanh[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^p*Tanh[c+d*x]^n,x] - 
  b/a \[Star] Int[(e+f*x)^m*Sinh[c+d*x]^(p+1)*Tanh[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Csch[c_.+d_.*x_]^p_.*Coth[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^p*Coth[c+d*x]^n,x] - 
  b/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^(p-1)*Coth[c+d*x]^n/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sech[c_.+d_.*x_]^p_.*Tanh[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^p*Tanh[c+d*x]^n,x] - 
  b/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^(p-1)*Tanh[c+d*x]^n/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sech[c_.+d_.*x_]^p_.*Csch[c_.+d_.*x_]^n_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^p*Csch[c+d*x]^n,x] - 
  b/a \[Star] Int[(e+f*x)^m*Sech[c+d*x]^p*Csch[c+d*x]^(n-1)/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Csch[c_.+d_.*x_]^p_.*Sech[c_.+d_.*x_]^n_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  1/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^p*Sech[c+d*x]^n,x] - 
  b/a \[Star] Int[(e+f*x)^m*Csch[c+d*x]^p*Sech[c+d*x]^(n-1)/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0] && IGtQ[n,0] && IGtQ[p,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_.*G_[c_.+d_.*x_]^p_./(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  Unintegrable[(e+f*x)^m*F[c+d*x]^n*G[c+d*x]^p/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f,m,n,p},x] && HyperbolicQ[F] && HyperbolicQ[G]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_.*G_[c_.+d_.*x_]^p_./(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  Unintegrable[(e+f*x)^m*F[c+d*x]^n*G[c+d*x]^p/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f,m,n,p},x] && HyperbolicQ[F] && HyperbolicQ[G]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_./(a_+b_.*Sech[c_.+d_.*x_]),x_Symbol] :=
  Int[(e+f*x)^m*Cosh[c+d*x]*F[c+d*x]^n/(b+a*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && HyperbolicQ[F] && IntegersQ[m,n]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_./(a_+b_.*Csch[c_.+d_.*x_]),x_Symbol] :=
  Int[(e+f*x)^m*Sinh[c+d*x]*F[c+d*x]^n/(b+a*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && HyperbolicQ[F] && IntegersQ[m,n]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_.*G_[c_.+d_.*x_]^p_./(a_+b_.*Sech[c_.+d_.*x_]),x_Symbol] :=
  Int[(e+f*x)^m*Cosh[c+d*x]*F[c+d*x]^n*G[c+d*x]^p/(b+a*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && HyperbolicQ[F] && HyperbolicQ[G] && IntegersQ[m,n,p]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*F_[c_.+d_.*x_]^n_.*G_[c_.+d_.*x_]^p_./(a_+b_.*Csch[c_.+d_.*x_]),x_Symbol] :=
  Int[(e+f*x)^m*Sinh[c+d*x]*F[c+d*x]^n*G[c+d*x]^p/(b+a*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f},x] && HyperbolicQ[F] && HyperbolicQ[G] && IntegersQ[m,n,p]


(* ::Code:: *)
Int[Sinh[a_.+b_.*x_]^p_.*Sinh[c_.+d_.*x_]^q_.,x_Symbol] :=
  1/2^(p+q) \[Star] Int[ExpandIntegrand[(-E^(-c-d*x)+E^(c+d*x))^q,(-E^(-a-b*x)+E^(a+b*x))^p,x],x] /;
FreeQ[{a,b,c,d,q},x] && IGtQ[p,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]^p_.*Cosh[c_.+d_.*x_]^q_.,x_Symbol] :=
  1/2^(p+q) \[Star] Int[ExpandIntegrand[(E^(-c-d*x)+E^(c+d*x))^q,(E^(-a-b*x)+E^(a+b*x))^p,x],x] /;
FreeQ[{a,b,c,d,q},x] && IGtQ[p,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[Sinh[a_.+b_.*x_]^p_.*Cosh[c_.+d_.*x_]^q_.,x_Symbol] :=
  1/2^(p+q) \[Star] Int[ExpandIntegrand[(E^(-c-d*x)+E^(c+d*x))^q,(-E^(-a-b*x)+E^(a+b*x))^p,x],x] /;
FreeQ[{a,b,c,d,q},x] && IGtQ[p,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]^p_.*Sinh[c_.+d_.*x_]^q_.,x_Symbol] :=
  1/2^(p+q) \[Star] Int[ExpandIntegrand[(-E^(-c-d*x)+E^(c+d*x))^q,(E^(-a-b*x)+E^(a+b*x))^p,x],x] /;
FreeQ[{a,b,c,d,q},x] && IGtQ[p,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[Sinh[a_.+b_.*x_]*Tanh[c_.+d_.*x_],x_Symbol] :=
  Int[-E^(-(a+b*x))/2 + E^(a+b*x)/2 + E^(-(a+b*x))/(1+E^(2*(c+d*x))) - E^(a+b*x)/(1+E^(2*(c+d*x))),x] /;
FreeQ[{a,b,c,d},x] && NeQ[b^2-d^2,0]


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]*Coth[c_.+d_.*x_],x_Symbol] :=
  Int[E^(-(a+b*x))/2 + E^(a+b*x)/2 - E^(-(a+b*x))/(1-E^(2*(c+d*x))) - E^(a+b*x)/(1-E^(2*(c+d*x))),x] /;
FreeQ[{a,b,c,d},x] && NeQ[b^2-d^2,0]


(* ::Code:: *)
Int[Sinh[a_.+b_.*x_]*Coth[c_.+d_.*x_],x_Symbol] :=
  Int[-E^(-(a+b*x))/2 + E^(a+b*x)/2 + E^(-(a+b*x))/(1-E^(2*(c+d*x))) - E^(a+b*x)/(1-E^(2*(c+d*x))),x] /;
FreeQ[{a,b,c,d},x] && NeQ[b^2-d^2,0]


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]*Tanh[c_.+d_.*x_],x_Symbol] :=
  Int[E^(-(a+b*x))/2 + E^(a+b*x)/2 - E^(-(a+b*x))/(1+E^(2*(c+d*x))) - E^(a+b*x)/(1+E^(2*(c+d*x))),x] /;
FreeQ[{a,b,c,d},x] && NeQ[b^2-d^2,0]


(* ::Code:: *)
Int[Sinh[a_./(c_.+d_.*x_)]^n_.,x_Symbol] :=
  -1/d \[Star] Subst[Int[Sinh[a*x]^n/x^2,x],x,1/(c+d*x)] /;
FreeQ[{a,c,d},x] && IGtQ[n,0]


(* ::Code:: *)
Int[Cosh[a_./(c_.+d_.*x_)]^n_.,x_Symbol] :=
  -1/d \[Star] Subst[Int[Cosh[a*x]^n/x^2,x],x,1/(c+d*x)] /;
FreeQ[{a,c,d},x] && IGtQ[n,0]


(* ::Code:: *)
Int[Sinh[e_.*(a_.+b_.*x_)/(c_.+d_.*x_)]^n_.,x_Symbol] :=
  -1/d \[Star] Subst[Int[Sinh[b*e/d-e*(b*c-a*d)*x/d]^n/x^2,x],x,1/(c+d*x)] /;
FreeQ[{a,b,c,d},x] && IGtQ[n,0] && NeQ[b*c-a*d,0]


(* ::Code:: *)
Int[Cosh[e_.*(a_.+b_.*x_)/(c_.+d_.*x_)]^n_.,x_Symbol] :=
  -1/d \[Star] Subst[Int[Cosh[b*e/d-e*(b*c-a*d)*x/d]^n/x^2,x],x,1/(c+d*x)] /;
FreeQ[{a,b,c,d},x] && IGtQ[n,0] && NeQ[b*c-a*d,0]


(* ::Code:: *)
Int[Sinh[u_]^n_.,x_Symbol] :=
  With[{lst=QuotientOfLinearsParts[u,x]},
  Int[Sinh[(lst[[1]]+lst[[2]]*x)/(lst[[3]]+lst[[4]]*x)]^n,x]] /;
IGtQ[n,0] && QuotientOfLinearsQ[u,x]


(* ::Code:: *)
Int[Cosh[u_]^n_.,x_Symbol] :=
  With[{lst=QuotientOfLinearsParts[u,x]},
  Int[Cosh[(lst[[1]]+lst[[2]]*x)/(lst[[3]]+lst[[4]]*x)]^n,x]] /;
IGtQ[n,0] && QuotientOfLinearsQ[u,x]


(* ::Code:: *)
Int[u_.*Sinh[v_]^p_.*Sinh[w_]^q_.,x_Symbol] :=
  Int[u*Sinh[v]^(p+q),x] /;
EqQ[w,v]


(* ::Code:: *)
Int[u_.*Cosh[v_]^p_.*Cosh[w_]^q_.,x_Symbol] :=
  Int[u*Cosh[v]^(p+q),x] /;
EqQ[w,v]


(* ::Code:: *)
Int[Sinh[v_]^p_.*Sinh[w_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[Sinh[v]^p*Sinh[w]^q,x],x] /;
IGtQ[p,0] && IGtQ[q,0] && (PolynomialQ[v,x] && PolynomialQ[w,x] || BinomialQ[{v,w},x] && IndependentQ[Cancel[v/w],x])


(* ::Code:: *)
Int[Cosh[v_]^p_.*Cosh[w_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[Cosh[v]^p*Cosh[w]^q,x],x] /;
IGtQ[p,0] && IGtQ[q,0] && (PolynomialQ[v,x] && PolynomialQ[w,x] || BinomialQ[{v,w},x] && IndependentQ[Cancel[v/w],x])


(* ::Code:: *)
Int[x_^m_.*Sinh[v_]^p_.*Sinh[w_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[x^m,Sinh[v]^p*Sinh[w]^q,x],x] /;
IGtQ[m,0] && IGtQ[p,0] && IGtQ[q,0] && (PolynomialQ[v,x] && PolynomialQ[w,x] || BinomialQ[{v,w},x] && IndependentQ[Cancel[v/w],x])


(* ::Code:: *)
Int[x_^m_.*Cosh[v_]^p_.*Cosh[w_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[x^m,Cosh[v]^p*Cosh[w]^q,x],x] /;
IGtQ[m,0] && IGtQ[p,0] && IGtQ[q,0] && (PolynomialQ[v,x] && PolynomialQ[w,x] || BinomialQ[{v,w},x] && IndependentQ[Cancel[v/w],x])


(* ::Code:: *)
Int[u_.*Sinh[v_]^p_.*Cosh[w_]^p_.,x_Symbol] :=
  1/2^p \[Star] Int[u*Sinh[2*v]^p,x] /;
EqQ[w,v] && IntegerQ[p]


(* ::Code:: *)
Int[Sinh[v_]^p_.*Cosh[w_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[Sinh[v]^p*Cosh[w]^q,x],x] /;
IGtQ[p,0] && IGtQ[q,0] && (PolynomialQ[v,x] && PolynomialQ[w,x] || BinomialQ[{v,w},x] && IndependentQ[Cancel[v/w],x])


(* ::Code:: *)
Int[x_^m_.*Sinh[v_]^p_.*Cosh[w_]^q_.,x_Symbol] :=
  Int[ExpandTrigReduce[x^m,Sinh[v]^p*Cosh[w]^q,x],x] /;
IGtQ[m,0] && IGtQ[p,0] && IGtQ[q,0] && (PolynomialQ[v,x] && PolynomialQ[w,x] || BinomialQ[{v,w},x] && IndependentQ[Cancel[v/w],x])


(* ::Code:: *)
Int[Sinh[v_]*Tanh[w_]^n_.,x_Symbol] :=
  Int[Cosh[v]*Tanh[w]^(n-1),x] - Cosh[v-w] \[Star] Int[Sech[w]*Tanh[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Cosh[v_]*Coth[w_]^n_.,x_Symbol] :=
  Int[Sinh[v]*Coth[w]^(n-1),x] + Cosh[v-w] \[Star] Int[Csch[w]*Coth[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Sinh[v_]*Coth[w_]^n_.,x_Symbol] :=
  Int[Cosh[v]*Coth[w]^(n-1),x] + Sinh[v-w] \[Star] Int[Csch[w]*Coth[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Cosh[v_]*Tanh[w_]^n_.,x_Symbol] :=
  Int[Sinh[v]*Tanh[w]^(n-1),x] - Sinh[v-w] \[Star] Int[Sech[w]*Tanh[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Sinh[v_]*Sech[w_]^n_.,x_Symbol] :=
  Cosh[v-w] \[Star] Int[Tanh[w]*Sech[w]^(n-1),x] + Sinh[v-w] \[Star] Int[Sech[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Cosh[v_]*Csch[w_]^n_.,x_Symbol] :=
  Cosh[v-w] \[Star] Int[Coth[w]*Csch[w]^(n-1),x] + Sinh[v-w] \[Star] Int[Csch[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Sinh[v_]*Csch[w_]^n_.,x_Symbol] :=
  Sinh[v-w] \[Star] Int[Coth[w]*Csch[w]^(n-1),x] + Cosh[v-w] \[Star] Int[Csch[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[Cosh[v_]*Sech[w_]^n_.,x_Symbol] :=
  Sinh[v-w] \[Star] Int[Tanh[w]*Sech[w]^(n-1),x] + Cosh[v-w] \[Star] Int[Sech[w]^(n-1),x] /;
GtQ[n,0] && NeQ[w,v] && FreeQ[v-w,x]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*(a_+b_.*Sinh[c_.+d_.*x_]*Cosh[c_.+d_.*x_])^n_.,x_Symbol] :=
  Int[(e+f*x)^m*(a+b*Sinh[2*c+2*d*x]/2)^n,x] /;
FreeQ[{a,b,c,d,e,f,m,n},x]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Sinh[c_.+d_.*x_]^2)^n_,x_Symbol] :=
  1/2^n \[Star] Int[x^m*(2*a-b+b*Cosh[2*c+2*d*x])^n,x] /;
FreeQ[{a,b,c,d},x] && NeQ[a-b,0] && IGtQ[m,0] && ILtQ[n,0] && (EqQ[n,-1] || EqQ[m,1] && EqQ[n,-2])


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cosh[c_.+d_.*x_]^2)^n_,x_Symbol] :=
  1/2^n \[Star] Int[x^m*(2*a+b+b*Cosh[2*c+2*d*x])^n,x] /;
FreeQ[{a,b,c,d},x] && NeQ[a-b,0] && IGtQ[m,0] && ILtQ[n,0] && (EqQ[n,-1] || EqQ[m,1] && EqQ[n,-2])


(* ::Code:: *)
Int[(f_.+g_.*x_)^m_./(a_.+b_.*Cosh[d_.+e_.*x_]^2+c_.*Sinh[d_.+e_.*x_]^2),x_Symbol] :=
  2 \[Star] Int[(f+g*x)^m/(2*a+b-c+(b+c)*Cosh[2*d+2*e*x]),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && IGtQ[m,0] && NeQ[a+b,0] && NeQ[a+c,0]


(* ::Code:: *)
Int[(f_.+g_.*x_)^m_.*Sech[d_.+e_.*x_]^2/(b_+c_.*Tanh[d_.+e_.*x_]^2),x_Symbol] :=
  2 \[Star] Int[(f+g*x)^m/(b-c+(b+c)*Cosh[2*d+2*e*x]),x] /;
FreeQ[{b,c,d,e,f,g},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(f_.+g_.*x_)^m_.*Sech[d_.+e_.*x_]^2/(b_.+a_.*Sech[d_.+e_.*x_]^2+c_.*Tanh[d_.+e_.*x_]^2),x_Symbol] :=
  2 \[Star] Int[(f+g*x)^m/(2*a+b-c+(b+c)*Cosh[2*d+2*e*x]),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && IGtQ[m,0] && NeQ[a+b,0] && NeQ[a+c,0]


(* ::Code:: *)
Int[(f_.+g_.*x_)^m_.*Csch[d_.+e_.*x_]^2/(c_+b_.*Coth[d_.+e_.*x_]^2),x_Symbol] :=
  2 \[Star] Int[(f+g*x)^m/(b-c+(b+c)*Cosh[2*d+2*e*x]),x] /;
FreeQ[{b,c,d,e,f,g},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(f_.+g_.*x_)^m_.*Csch[d_.+e_.*x_]^2/(c_.+b_.*Coth[d_.+e_.*x_]^2+a_.*Csch[d_.+e_.*x_]^2),x_Symbol] :=
  2 \[Star] Int[(f+g*x)^m/(2*a+b-c+(b+c)*Cosh[2*d+2*e*x]),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && IGtQ[m,0] && NeQ[a+b,0] && NeQ[a+c,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)*(A_+B_.*Sinh[c_.+d_.*x_])/(a_+b_.*Sinh[c_.+d_.*x_])^2,x_Symbol] :=
  B*(e+f*x)*Cosh[c+d*x]/(a*d*(a+b*Sinh[c+d*x])) - 
  B*f/(a*d) \[Star] Int[Cosh[c+d*x]/(a+b*Sinh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f,A,B},x] && EqQ[a*A+b*B,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)*(A_+B_.*Cosh[c_.+d_.*x_])/(a_+b_.*Cosh[c_.+d_.*x_])^2,x_Symbol] :=
  B*(e+f*x)*Sinh[c+d*x]/(a*d*(a+b*Cosh[c+d*x])) -
  B*f/(a*d) \[Star] Int[Sinh[c+d*x]/(a+b*Cosh[c+d*x]),x] /;
FreeQ[{a,b,c,d,e,f,A,B},x] && EqQ[a*A-b*B,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sinh[a_.+b_.*(c_+d_.*x_)^n_]^p_.,x_Symbol] :=
  1/d^(m+1) \[Star] Subst[Int[(d*e-c*f+f*x)^m*Sinh[a+b*x^n]^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,n},x] && IGtQ[m,0] && RationalQ[p]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cosh[a_.+b_.*(c_+d_.*x_)^n_]^p_.,x_Symbol] :=
  1/d^(m+1) \[Star] Subst[Int[(d*e-c*f+f*x)^m*Cosh[a+b*x^n]^p,x],x,c+d*x] /;
FreeQ[{a,b,c,d,e,f,n},x] && IGtQ[m,0] && RationalQ[p]


(* ::Code:: *)
Int[Sech[v_]^m_.*(a_+b_.*Tanh[v_])^n_.,x_Symbol] :=
  Int[(a*Cosh[v]+b*Sinh[v])^n,x] /;
FreeQ[{a,b},x] && IntegerQ[(m-1)/2] && EqQ[m+n,0]


(* ::Code:: *)
Int[Csch[v_]^m_.*(a_+b_.*Coth[v_])^n_.,x_Symbol] :=
  Int[(b*Cosh[v]+a*Sinh[v])^n,x] /;
FreeQ[{a,b},x] && IntegerQ[(m-1)/2] && EqQ[m+n,0]


(* ::Code:: *)
Int[u_.*Sinh[a_.+b_.*x_]^m_.*Sinh[c_.+d_.*x_]^n_.,x_Symbol] :=
  Int[ExpandTrigReduce[u,Sinh[a+b*x]^m*Sinh[c+d*x]^n,x],x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[u_.*Cosh[a_.+b_.*x_]^m_.*Cosh[c_.+d_.*x_]^n_.,x_Symbol] :=
  Int[ExpandTrigReduce[u,Cosh[a+b*x]^m*Cosh[c+d*x]^n,x],x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0] && IGtQ[n,0]


(* ::Code:: *)
Int[Sech[a_.+b_.*x_]*Sech[c_+d_.*x_],x_Symbol] :=
  -Csch[(b*c-a*d)/d] \[Star] Int[Tanh[a+b*x],x] + Csch[(b*c-a*d)/b] \[Star] Int[Tanh[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && EqQ[b^2-d^2,0] && NeQ[b*c-a*d,0]


(* ::Code:: *)
Int[Csch[a_.+b_.*x_]*Csch[c_+d_.*x_],x_Symbol] :=
  Csch[(b*c-a*d)/b] \[Star] Int[Coth[a+b*x],x] - Csch[(b*c-a*d)/d] \[Star] Int[Coth[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && EqQ[b^2-d^2,0] && NeQ[b*c-a*d,0]


(* ::Code:: *)
Int[Tanh[a_.+b_.*x_]*Tanh[c_+d_.*x_],x_Symbol] :=
  b*x/d - b/d*Cosh[(b*c-a*d)/d] \[Star] Int[Sech[a+b*x]*Sech[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && EqQ[b^2-d^2,0] && NeQ[b*c-a*d,0]


(* ::Code:: *)
Int[Coth[a_.+b_.*x_]*Coth[c_+d_.*x_],x_Symbol] :=
  b*x/d + Cosh[(b*c-a*d)/d] \[Star] Int[Csch[a+b*x]*Csch[c+d*x],x] /;
FreeQ[{a,b,c,d},x] && EqQ[b^2-d^2,0] && NeQ[b*c-a*d,0]


(* ::Code:: *)
Int[u_.*(a_.*Cosh[v_]+b_.*Sinh[v_])^n_.,x_Symbol] :=
  Int[u*(a*E^(a/b*v))^n,x] /;
FreeQ[{a,b,n},x] && EqQ[a^2-b^2,0]


(* ::Code:: *)
Int[Sinh[d_.*(a_.+b_.*Log[c_.*x_^n_.])^2],x_Symbol] :=
  -1/2 \[Star] Int[E^(-d*(a+b*Log[c*x^n])^2),x] + 1/2 \[Star] Int[E^(d*(a+b*Log[c*x^n])^2),x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[Cosh[d_.*(a_.+b_.*Log[c_.*x_^n_.])^2],x_Symbol] :=
  1/2 \[Star] Int[E^(-d*(a+b*Log[c*x^n])^2),x] + 1/2 \[Star] Int[E^(d*(a+b*Log[c*x^n])^2),x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Sinh[d_.*(a_.+b_.*Log[c_.*x_^n_.])^2],x_Symbol] :=
  -1/2 \[Star] Int[(e*x)^m*E^(-d*(a+b*Log[c*x^n])^2),x] + 1/2 \[Star] Int[(e*x)^m*E^(d*(a+b*Log[c*x^n])^2),x] /;
FreeQ[{a,b,c,d,e,m,n},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Cosh[d_.*(a_.+b_.*Log[c_.*x_^n_.])^2],x_Symbol] :=
  1/2 \[Star] Int[(e*x)^m*E^(-d*(a+b*Log[c*x^n])^2),x] + 1/2 \[Star] Int[(e*x)^m*E^(d*(a+b*Log[c*x^n])^2),x] /;
FreeQ[{a,b,c,d,e,m,n},x]



