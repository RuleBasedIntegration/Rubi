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
Int[u_^m_,x_Symbol] :=
  Int[ExpandToSum[u,x]^m,x] /;
FreeQ[m,x] && LinearQ[u,x] && Not[LinearMatchQ[u,x]]


(* ::Code:: *)
Int[u_^m_.*v_^n_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^m*ExpandToSum[v,x]^n,x] /;
FreeQ[{m,n},x] && LinearQ[{u,v},x] && Not[LinearMatchQ[{u,v},x]]


(* ::Code:: *)
Int[u_^m_.*v_^n_.*w_^p_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^m*ExpandToSum[v,x]^n*ExpandToSum[w,x]^p,x] /;
FreeQ[{m,n,p},x] && LinearQ[{u,v,w},x] && Not[LinearMatchQ[{u,v,w},x]]


(* ::Code:: *)
Int[u_^m_.*v_^n_.*w_^p_.*z_^q_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^m*ExpandToSum[v,x]^n*ExpandToSum[w,x]^p*ExpandToSum[z,x]^q,x] /;
FreeQ[{m,n,p,q},x] && LinearQ[{u,v,w,z},x] && Not[LinearMatchQ[{u,v,w,z},x]]


(* ::Code:: *)
Int[u_^p_,x_Symbol] :=
  Int[ExpandToSum[u,x]^p,x] /;
FreeQ[p,x] && BinomialQ[u,x] && Not[BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(c_.*x_)^m_.*u_^p_.,x_Symbol] :=
  Int[(c*x)^m*ExpandToSum[u,x]^p,x] /;
FreeQ[{c,m,p},x] && BinomialQ[u,x] && Not[BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[u_^p_.*v_^q_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^p*ExpandToSum[v,x]^q,x] /;
FreeQ[{p,q},x] && BinomialQ[{u,v},x] && EqQ[BinomialDegree[u,x]-BinomialDegree[v,x],0] && Not[BinomialMatchQ[{u,v},x]]


(* ::Code:: *)
Int[(e_.*x_)^m_.*u_^p_.*v_^q_.,x_Symbol] :=
  Int[(e*x)^m*ExpandToSum[u,x]^p*ExpandToSum[v,x]^q,x] /;
FreeQ[{e,m,p,q},x] && BinomialQ[{u,v},x] && EqQ[BinomialDegree[u,x]-BinomialDegree[v,x],0] && Not[BinomialMatchQ[{u,v},x]]


(* ::Code:: *)
Int[u_^m_.*v_^p_.*w_^q_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^m*ExpandToSum[v,x]^p*ExpandToSum[w,x]^q,x] /;
FreeQ[{m,p,q},x] && BinomialQ[{u,v,w},x] && EqQ[BinomialDegree[u,x]-BinomialDegree[v,x],0] && 
  EqQ[BinomialDegree[u,x]-BinomialDegree[w,x],0] && Not[BinomialMatchQ[{u,v,w},x]]


(* ::Code:: *)
Int[(g_.*x_)^m_.*u_^p_.*v_^q_.*z_^r_.,x_Symbol] :=
  Int[(g*x)^m*ExpandToSum[u,x]^p*ExpandToSum[v,x]^q*ExpandToSum[z,x]^r,x] /;
FreeQ[{g,m,p,q,r},x] && BinomialQ[{u,v,z},x] && EqQ[BinomialDegree[u,x]-BinomialDegree[v,x],0] && 
  EqQ[BinomialDegree[u,x]-BinomialDegree[z,x],0] && Not[BinomialMatchQ[{u,v,z},x]]


(* ::Code:: *)
Int[u_^p_,x_Symbol] :=
  Int[ExpandToSum[u,x]^p,x] /;
FreeQ[p,x] && GeneralizedBinomialQ[u,x] && Not[GeneralizedBinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(c_.*x_)^m_.*u_^p_.,x_Symbol] :=
  Int[(c*x)^m*ExpandToSum[u,x]^p,x] /;
FreeQ[{c,m,p},x] && GeneralizedBinomialQ[u,x] && Not[GeneralizedBinomialMatchQ[u,x]]


(* ::Code:: *)
Int[u_^p_,x_Symbol] :=
  Int[ExpandToSum[u,x]^p,x] /;
FreeQ[p,x] && QuadraticQ[u,x] && Not[QuadraticMatchQ[u,x]]


(* ::Code:: *)
Int[u_^m_.*v_^p_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^m*ExpandToSum[v,x]^p,x] /;
FreeQ[{m,p},x] && LinearQ[u,x] && QuadraticQ[v,x] && Not[LinearMatchQ[u,x] && QuadraticMatchQ[v,x]]


(* ::Code:: *)
Int[u_^m_.*v_^n_.*w_^p_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^m*ExpandToSum[v,x]^n*ExpandToSum[w,x]^p,x] /;
FreeQ[{m,n,p},x] && LinearQ[{u,v},x] && QuadraticQ[w,x] && Not[LinearMatchQ[{u,v},x] && QuadraticMatchQ[w,x]]


(* ::Code:: *)
Int[u_^p_.*v_^q_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^p*ExpandToSum[v,x]^q,x] /;
FreeQ[{p,q},x] && QuadraticQ[{u,v},x] && Not[QuadraticMatchQ[{u,v},x]]


(* ::Code:: *)
Int[z_^m_.*u_^p_.*v_^q_.,x_Symbol] :=
  Int[ExpandToSum[z,x]^m*ExpandToSum[u,x]^p*ExpandToSum[v,x]^q,x] /;
FreeQ[{m,p,q},x] && LinearQ[z,x] && QuadraticQ[{u,v},x] && Not[LinearMatchQ[z,x] && QuadraticMatchQ[{u,v},x]] && 
  Not[MatchQ[z^m*u^p*v^q, (d_.+e_.*x)^m*(f_.+g_.*x)^2*(a_.+b_.*x+c_.*x^2)^t_. /; FreeQ[{a,b,c,d,e,f,g,t},x]]] && 
  Not[MatchQ[z^m*u^p*v^q, (d_.+e_.*x)^m*(f_.+g_.*x)^2*(a_.+c_.*x^2)^t_. /; FreeQ[{a,c,d,e,f,g,t},x]]]


(* ::Code:: *)
Int[u_^p_,x_Symbol] :=
  Int[ExpandToSum[u,x]^p,x] /;
FreeQ[p,x] && TrinomialQ[u,x] && Not[TrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(d_.*x_)^m_.*u_^p_.,x_Symbol] :=
  Int[(d*x)^m*ExpandToSum[u,x]^p,x] /;
FreeQ[{d,m,p},x] && TrinomialQ[u,x] && Not[TrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[u_^q_.*v_^p_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^q*ExpandToSum[v,x]^p,x] /;
FreeQ[{p,q},x] && BinomialQ[u,x] && TrinomialQ[v,x] && Not[BinomialMatchQ[u,x] && TrinomialMatchQ[v,x]]


(* ::Code:: *)
Int[u_^q_.*v_^p_.,x_Symbol] :=
  Int[ExpandToSum[u,x]^q*ExpandToSum[v,x]^p,x] /;
FreeQ[{p,q},x] && BinomialQ[u,x] && BinomialQ[v,x] && Not[BinomialMatchQ[u,x] && BinomialMatchQ[v,x]]


(* ::Code:: *)
Int[(f_.*x_)^m_.*z_^q_.*u_^p_.,x_Symbol] :=
  Int[(f*x)^m*ExpandToSum[z,x]^q*ExpandToSum[u,x]^p,x] /;
FreeQ[{f,m,p,q},x] && BinomialQ[z,x] && TrinomialQ[u,x] && Not[BinomialMatchQ[z,x] && TrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(f_.*x_)^m_.*z_^q_.*u_^p_.,x_Symbol] :=
  Int[(f*x)^m*ExpandToSum[z,x]^q*ExpandToSum[u,x]^p,x] /;
FreeQ[{f,m,p,q},x] && BinomialQ[z,x] && BinomialQ[u,x] && Not[BinomialMatchQ[z,x] && BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[Px_*z_^q_.*u_^p_.,x_Symbol] :=
  Int[Px*ExpandToSum[z,x]^q*ExpandToSum[u,x]^p,x] /;
FreeQ[{p,q},x] && PolyQ[Px,x] && BinomialQ[z,x] && TrinomialQ[u,x] && Not[BinomialMatchQ[z,x] && TrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[Px_*z_^q_.*u_^p_.,x_Symbol] :=
  Int[Px*ExpandToSum[z,x]^q*ExpandToSum[u,x]^p,x] /;
FreeQ[{p,q},x] && BinomialQ[z,x] && BinomialQ[u,x] && Not[BinomialMatchQ[z,x] && BinomialMatchQ[u,x]]


(* ::Code:: *)
Int[u_^p_,x_Symbol] :=
  Int[ExpandToSum[u,x]^p,x] /;
FreeQ[p,x] && GeneralizedTrinomialQ[u,x] && Not[GeneralizedTrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(d_.*x_)^m_.*u_^p_.,x_Symbol] :=
  Int[(d*x)^m*ExpandToSum[u,x]^p,x] /;
FreeQ[{d,m,p},x] && GeneralizedTrinomialQ[u,x] && Not[GeneralizedTrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[z_*u_^p_.,x_Symbol] :=
  Int[ExpandToSum[z,x]*ExpandToSum[u,x]^p,x] /;
FreeQ[p,x] && BinomialQ[z,x] && GeneralizedTrinomialQ[u,x] && 
  EqQ[BinomialDegree[z,x]-GeneralizedTrinomialDegree[u,x],0] && Not[BinomialMatchQ[z,x] && GeneralizedTrinomialMatchQ[u,x]]


(* ::Code:: *)
Int[(f_.*x_)^m_.*z_*u_^p_.,x_Symbol] :=
  Int[(f*x)^m*ExpandToSum[z,x]*ExpandToSum[u,x]^p,x] /;
FreeQ[{f,m,p},x] && BinomialQ[z,x] && GeneralizedTrinomialQ[u,x] && 
  EqQ[BinomialDegree[z,x]-GeneralizedTrinomialDegree[u,x],0] && Not[BinomialMatchQ[z,x] && GeneralizedTrinomialMatchQ[u,x]]



