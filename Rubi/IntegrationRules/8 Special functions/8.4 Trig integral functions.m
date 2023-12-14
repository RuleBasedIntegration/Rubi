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
Int[SinIntegral[a_.+b_.*x_],x_Symbol] :=
  (a+b*x)*SinIntegral[a+b*x]/b + Cos[a+b*x]/b/;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[CosIntegral[a_.+b_.*x_],x_Symbol] :=
  (a+b*x)*CosIntegral[a+b*x]/b - Sin[a+b*x]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[SinIntegral[b_.*x_]/x_,x_Symbol] :=
  1/2*b*x*HypergeometricPFQ[{1,1,1},{2,2,2},-I*b*x] + 
  1/2*b*x*HypergeometricPFQ[{1,1,1},{2,2,2},I*b*x] /;
FreeQ[b,x]


(* ::Code:: *)
Int[CosIntegral[b_.*x_]/x_,x_Symbol] :=
  -1/2*I*b*x*HypergeometricPFQ[{1,1,1},{2,2,2},-I*b*x] + 
  1/2*I*b*x*HypergeometricPFQ[{1,1,1},{2,2,2},I*b*x] + 
  EulerGamma*Log[x] + 
  1/2*Log[b*x]^2 /;
FreeQ[b,x]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*SinIntegral[a_.+b_.*x_],x_Symbol] :=
  (c+d*x)^(m+1)*SinIntegral[a+b*x]/(d*(m+1)) - 
  b/(d*(m+1)) \[Star] Int[(c+d*x)^(m+1)*Sin[a+b*x]/(a+b*x),x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*CosIntegral[a_.+b_.*x_],x_Symbol] :=
  (c+d*x)^(m+1)*CosIntegral[a+b*x]/(d*(m+1)) - 
  b/(d*(m+1)) \[Star] Int[(c+d*x)^(m+1)*Cos[a+b*x]/(a+b*x),x] /;
FreeQ[{a,b,c,d,m},x] && NeQ[m,-1]


(* ::Code:: *)
Int[SinIntegral[a_.+b_.*x_]^2,x_Symbol] :=
  (a+b*x)*SinIntegral[a+b*x]^2/b -
  2 \[Star] Int[Sin[a+b*x]*SinIntegral[a+b*x],x] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[CosIntegral[a_.+b_.*x_]^2,x_Symbol] :=
  (a+b*x)*CosIntegral[a+b*x]^2/b -
  2 \[Star] Int[Cos[a+b*x]*CosIntegral[a+b*x],x] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[x_^m_.*SinIntegral[b_.*x_]^2,x_Symbol] :=
  x^(m+1)*SinIntegral[b*x]^2/(m+1) -
  2/(m+1) \[Star] Int[x^m*Sin[b*x]*SinIntegral[b*x],x] /;
FreeQ[b,x] && IGtQ[m,0]


(* ::Code:: *)
Int[x_^m_.*CosIntegral[b_.*x_]^2,x_Symbol] :=
  x^(m+1)*CosIntegral[b*x]^2/(m+1) -
  2/(m+1) \[Star] Int[x^m*Cos[b*x]*CosIntegral[b*x],x] /;
FreeQ[b,x] && IGtQ[m,0]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*SinIntegral[a_+b_.*x_]^2,x_Symbol] :=
  (a+b*x)*(c+d*x)^m*SinIntegral[a+b*x]^2/(b*(m+1)) - 
  2/(m+1) \[Star] Int[(c+d*x)^m*Sin[a+b*x]*SinIntegral[a+b*x],x] + 
  (b*c-a*d)*m/(b*(m+1)) \[Star] Int[(c+d*x)^(m-1)*SinIntegral[a+b*x]^2,x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(c_.+d_.*x_)^m_.*CosIntegral[a_+b_.*x_]^2,x_Symbol] :=
  (a+b*x)*(c+d*x)^m*CosIntegral[a+b*x]^2/(b*(m+1)) - 
  2/(m+1) \[Star] Int[(c+d*x)^m*Cos[a+b*x]*CosIntegral[a+b*x],x] + 
  (b*c-a*d)*m/(b*(m+1)) \[Star] Int[(c+d*x)^(m-1)*CosIntegral[a+b*x]^2,x] /;
FreeQ[{a,b,c,d},x] && IGtQ[m,0]


(* ::Code:: *)
(* Int[x_^m_.*SinIntegral[a_+b_.*x_]^2,x_Symbol] :=
  b*x^(m+2)*SinIntegral[a+b*x]^2/(a*(m+1)) +
  x^(m+1)*SinIntegral[a+b*x]^2/(m+1) -
  2*b/(a*(m+1)) \[Star] Int[x^(m+1)*Sin[a+b*x]*SinIntegral[a+b*x],x] -
  b*(m+2)/(a*(m+1)) \[Star] Int[x^(m+1)*SinIntegral[a+b*x]^2,x] /;
FreeQ[{a,b},x] && ILtQ[m,-2] *)


(* ::Code:: *)
(* Int[x_^m_.*CosIntegral[a_+b_.*x_]^2,x_Symbol] :=
  b*x^(m+2)*CosIntegral[a+b*x]^2/(a*(m+1)) +
  x^(m+1)*CosIntegral[a+b*x]^2/(m+1) -
  2*b/(a*(m+1)) \[Star] Int[x^(m+1)*Cos[a+b*x]*CosIntegral[a+b*x],x] -
  b*(m+2)/(a*(m+1)) \[Star] Int[x^(m+1)*CosIntegral[a+b*x]^2,x] /;
FreeQ[{a,b},x] && ILtQ[m,-2] *)


(* ::Code:: *)
Int[Sin[a_.+b_.*x_]*SinIntegral[c_.+d_.*x_],x_Symbol] :=
  -Cos[a+b*x]*SinIntegral[c+d*x]/b +
  d/b \[Star] Int[Cos[a+b*x]*Sin[c+d*x]/(c+d*x),x] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_]*CosIntegral[c_.+d_.*x_],x_Symbol] :=
  Sin[a+b*x]*CosIntegral[c+d*x]/b -
  d/b \[Star] Int[Sin[a+b*x]*Cos[c+d*x]/(c+d*x),x] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sin[a_.+b_.*x_]*SinIntegral[c_.+d_.*x_],x_Symbol] :=
  -(e+f*x)^m*Cos[a+b*x]*SinIntegral[c+d*x]/b +
  d/b \[Star] Int[(e+f*x)^m*Cos[a+b*x]*Sin[c+d*x]/(c+d*x),x] +
  f*m/b \[Star] Int[(e+f*x)^(m-1)*Cos[a+b*x]*SinIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cos[a_.+b_.*x_]*CosIntegral[c_.+d_.*x_],x_Symbol] :=
  (e+f*x)^m*Sin[a+b*x]*CosIntegral[c+d*x]/b -
  d/b \[Star] Int[(e+f*x)^m*Sin[a+b*x]*Cos[c+d*x]/(c+d*x),x] -
  f*m/b \[Star] Int[(e+f*x)^(m-1)*Sin[a+b*x]*CosIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_*Sin[a_.+b_.*x_]*SinIntegral[c_.+d_.*x_],x_Symbol] :=
  (e+f*x)^(m+1)*Sin[a+b*x]*SinIntegral[c+d*x]/(f*(m+1)) -
  d/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Sin[a+b*x]*Sin[c+d*x]/(c+d*x),x] -
  b/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Cos[a+b*x]*SinIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && ILtQ[m,-1]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cos[a_.+b_.*x_]*CosIntegral[c_.+d_.*x_],x_Symbol] :=
  (e+f*x)^(m+1)*Cos[a+b*x]*CosIntegral[c+d*x]/(f*(m+1)) -
  d/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Cos[a+b*x]*Cos[c+d*x]/(c+d*x),x] +
  b/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Sin[a+b*x]*CosIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && ILtQ[m,-1]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_]*SinIntegral[c_.+d_.*x_],x_Symbol] :=
  Sin[a+b*x]*SinIntegral[c+d*x]/b -
  d/b \[Star] Int[Sin[a+b*x]*Sin[c+d*x]/(c+d*x),x] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[Sin[a_.+b_.*x_]*CosIntegral[c_.+d_.*x_],x_Symbol] :=
  -Cos[a+b*x]*CosIntegral[c+d*x]/b +
  d/b \[Star] Int[Cos[a+b*x]*Cos[c+d*x]/(c+d*x),x] /;
FreeQ[{a,b,c,d},x]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cos[a_.+b_.*x_]*SinIntegral[c_.+d_.*x_],x_Symbol] :=
  (e+f*x)^m*Sin[a+b*x]*SinIntegral[c+d*x]/b -
  d/b \[Star] Int[(e+f*x)^m*Sin[a+b*x]*Sin[c+d*x]/(c+d*x),x] -
  f*m/b \[Star] Int[(e+f*x)^(m-1)*Sin[a+b*x]*SinIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Sin[a_.+b_.*x_]*CosIntegral[c_.+d_.*x_],x_Symbol] :=
  -(e+f*x)^m*Cos[a+b*x]*CosIntegral[c+d*x]/b +
  d/b \[Star] Int[(e+f*x)^m*Cos[a+b*x]*Cos[c+d*x]/(c+d*x),x] +
  f*m/b \[Star] Int[(e+f*x)^(m-1)*Cos[a+b*x]*CosIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && IGtQ[m,0]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_.*Cos[a_.+b_.*x_]*SinIntegral[c_.+d_.*x_],x_Symbol] :=
  (e+f*x)^(m+1)*Cos[a+b*x]*SinIntegral[c+d*x]/(f*(m+1)) -
  d/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Cos[a+b*x]*Sin[c+d*x]/(c+d*x),x] +
  b/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Sin[a+b*x]*SinIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && ILtQ[m,-1]


(* ::Code:: *)
Int[(e_.+f_.*x_)^m_*Sin[a_.+b_.*x_]*CosIntegral[c_.+d_.*x_],x_Symbol] :=
  (e+f*x)^(m+1)*Sin[a+b*x]*CosIntegral[c+d*x]/(f*(m+1)) -
  d/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Sin[a+b*x]*Cos[c+d*x]/(c+d*x),x] -
  b/(f*(m+1)) \[Star] Int[(e+f*x)^(m+1)*Cos[a+b*x]*CosIntegral[c+d*x],x] /;
FreeQ[{a,b,c,d,e,f},x] && ILtQ[m,-1]


(* ::Code:: *)
Int[SinIntegral[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  x*SinIntegral[d*(a+b*Log[c*x^n])] - b*d*n \[Star] Int[Sin[d*(a+b*Log[c*x^n])]/(d*(a+b*Log[c*x^n])),x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[CosIntegral[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  x*CosIntegral[d*(a+b*Log[c*x^n])] - b*d*n \[Star] Int[Cos[d*(a+b*Log[c*x^n])]/(d*(a+b*Log[c*x^n])),x] /;
FreeQ[{a,b,c,d,n},x]


(* ::Code:: *)
Int[F_[d_.*(a_.+b_.*Log[c_.*x_^n_.])]/x_,x_Symbol] :=
  1/n \[Star] Subst[F[d*(a+b*x)],x,Log[c*x^n]] /;
FreeQ[{a,b,c,d,n},x] && MemberQ[{SinIntegral,CosIntegral},x]


(* ::Code:: *)
Int[(e_.*x_)^m_.*SinIntegral[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  (e*x)^(m+1)*SinIntegral[d*(a+b*Log[c*x^n])]/(e*(m+1)) - 
  b*d*n/(m+1) \[Star] Int[(e*x)^m*Sin[d*(a+b*Log[c*x^n])]/(d*(a+b*Log[c*x^n])),x] /;
FreeQ[{a,b,c,d,e,m,n},x] && NeQ[m,-1]


(* ::Code:: *)
Int[(e_.*x_)^m_.*CosIntegral[d_.*(a_.+b_.*Log[c_.*x_^n_.])],x_Symbol] :=
  (e*x)^(m+1)*CosIntegral[d*(a+b*Log[c*x^n])]/(e*(m+1)) - 
  b*d*n/(m+1) \[Star] Int[(e*x)^m*Cos[d*(a+b*Log[c*x^n])]/(d*(a+b*Log[c*x^n])),x] /;
FreeQ[{a,b,c,d,e,m,n},x] && NeQ[m,-1]



