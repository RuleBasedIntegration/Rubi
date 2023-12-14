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
Int[(d_+e_.*x_^n_)^q_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  Int[x^(n*(2*p+q))*(e+d*x^(-n))^q*(c+b*x^(-n)+a*x^(-2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && IntegersQ[p,q] && NegQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  Int[x^(n*(2*p+q))*(e+d*x^(-n))^q*(c+a*x^(-2*n))^p,x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && IntegersQ[p,q] && NegQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_.+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  -Subst[Int[(d+e*x^(-n))^q*(a+b*x^(-n)+c*x^(-2*n))^p/x^2,x],x,1/x] /;
FreeQ[{a,b,c,d,e,p,q},x] && EqQ[n2,2*n] && ILtQ[n,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  -Subst[Int[(d+e*x^(-n))^q*(a+c*x^(-2*n))^p/x^2,x],x,1/x] /;
FreeQ[{a,c,d,e,p,q},x] && EqQ[n2,2*n] && ILtQ[n,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_.+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  With[{g=Denominator[n]},
  g \[Star] Subst[Int[x^(g-1)*(d+e*x^(g*n))^q*(a+b*x^(g*n)+c*x^(2*g*n))^p,x],x,x^(1/g)]] /;
FreeQ[{a,b,c,d,e,p,q},x] && EqQ[n2,2*n] && FractionQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  With[{g=Denominator[n]},
  g \[Star] Subst[Int[x^(g-1)*(d+e*x^(g*n))^q*(a+c*x^(2*g*n))^p,x],x,x^(1/g)]] /;
FreeQ[{a,c,d,e,p,q},x] && EqQ[n2,2*n] && FractionQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  (b*e-d*c)*(b*x^n+c*x^(2*n))^(p+1)/(b*c*n*(p+1)*x^(2*n*(p+1))) + 
  e/c \[Star] Int[x^(-n)*(b*x^n+c*x^(2*n))^(p+1),x] /;
FreeQ[{b,c,d,e,n,p},x] && EqQ[n2,2*n] && Not[IntegerQ[p]] && EqQ[n*(2*p+1)+1,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  e*x^(-n+1)*(b*x^n+c*x^(2*n))^(p+1)/(c*(n*(2*p+1)+1)) /;
FreeQ[{b,c,d,e,n,p},x] && EqQ[n2,2*n] && Not[IntegerQ[p]] && NeQ[n*(2*p+1)+1,0] && EqQ[b*e*(n*p+1)-c*d*(n*(2*p+1)+1),0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  e*x^(-n+1)*(b*x^n+c*x^(2*n))^(p+1)/(c*(n*(2*p+1)+1)) - 
  (b*e*(n*p+1)-c*d*(n*(2*p+1)+1))/(c*(n*(2*p+1)+1)) \[Star] Int[(b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{b,c,d,e,n,p},x] && EqQ[n2,2*n] && Not[IntegerQ[p]] && NeQ[n*(2*p+1)+1,0] && NeQ[b*e*(n*p+1)-c*d*(n*(2*p+1)+1),0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  (b*x^n+c*x^(2*n))^FracPart[p]/(x^(n*FracPart[p])*(b+c*x^n)^FracPart[p]) \[Star] Int[x^(n*p)*(d+e*x^n)^q*(b+c*x^n)^p,x] /;
FreeQ[{b,c,d,e,n,p,q},x] && EqQ[n2,2*n] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)^q*(a+b*x^n+c*x^(2*n)),x],x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[q,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+c_.*x_^n2_),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)^q*(a+c*x^(2*n)),x],x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && IGtQ[q,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  -(c*d^2-b*d*e+a*e^2)*x*(d+e*x^n)^(q+1)/(d*e^2*n*(q+1)) + 
  1/(n*(q+1)*d*e^2) \[Star] Int[(d+e*x^n)^(q+1)*Simp[c*d^2-b*d*e+a*e^2*(n*(q+1)+1)+c*d*e*n*(q+1)*x^n,x],x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+c_.*x_^n2_),x_Symbol] :=
  -(c*d^2+a*e^2)*x*(d+e*x^n)^(q+1)/(d*e^2*n*(q+1)) + 
  1/(n*(q+1)*d*e^2) \[Star] Int[(d+e*x^n)^(q+1)*Simp[c*d^2+a*e^2*(n*(q+1)+1)+c*d*e*n*(q+1)*x^n,x],x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  c*x^(n+1)*(d+e*x^n)^(q+1)/(e*(n*(q+2)+1)) + 
  1/(e*(n*(q+2)+1)) \[Star] Int[(d+e*x^n)^q*(a*e*(n*(q+2)+1)-(c*d*(n+1)-b*e*(n*(q+2)+1))*x^n),x] /;
FreeQ[{a,b,c,d,e,n,q},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+c_.*x_^n2_),x_Symbol] :=
  c*x^(n+1)*(d+e*x^n)^(q+1)/(e*(n*(q+2)+1)) + 
  1/(e*(n*(q+2)+1)) \[Star] Int[(d+e*x^n)^q*(a*e*(n*(q+2)+1)-c*d*(n+1)*x^n),x] /;
FreeQ[{a,c,d,e,n,q},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[2*d*e,2]},
  e^2/(2*c) \[Star] Int[1/(d+q*x^(n/2)+e*x^n),x] + e^2/(2*c) \[Star] Int[1/(d-q*x^(n/2)+e*x^n),x]] /;
FreeQ[{a,c,d,e},x] && EqQ[n2,2*n] && EqQ[c*d^2-a*e^2,0] && IGtQ[n/2,0] && PosQ[d*e]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[-2*d*e,2]},
  d/(2*a) \[Star] Int[(d-q*x^(n/2))/(d-q*x^(n/2)-e*x^n),x] + 
  d/(2*a) \[Star] Int[(d+q*x^(n/2))/(d+q*x^(n/2)-e*x^n),x]] /;
FreeQ[{a,c,d,e},x] && EqQ[n2,2*n] && EqQ[c*d^2-a*e^2,0] && IGtQ[n/2,0] && NegQ[d*e]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[a/c,4]},
  1/(2*Sqrt[2]*c*q^3) \[Star] Int[(Sqrt[2]*d*q-(d-e*q^2)*x^(n/2))/(q^2-Sqrt[2]*q*x^(n/2)+x^n),x] + 
  1/(2*Sqrt[2]*c*q^3) \[Star] Int[(Sqrt[2]*d*q+(d-e*q^2)*x^(n/2))/(q^2+Sqrt[2]*q*x^(n/2)+x^n),x]] /;
FreeQ[{a,c,d,e},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && IGtQ[n/2,0] && PosQ[a*c]


(* ::Code:: *)
Int[(d_+e_.*x_^3)/(a_+c_.*x_^6),x_Symbol] :=
  With[{q=Rt[c/a,6]},
  1/(3*a*q^2) \[Star] Int[(q^2*d-e*x)/(1+q^2*x^2),x] + 
  1/(6*a*q^2) \[Star] Int[(2*q^2*d-(Sqrt[3]*q^3*d-e)*x)/(1-Sqrt[3]*q*x+q^2*x^2),x] + 
  1/(6*a*q^2) \[Star] Int[(2*q^2*d+(Sqrt[3]*q^3*d+e)*x)/(1+Sqrt[3]*q*x+q^2*x^2),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[-a/c,2]},
  (d+e*q)/2 \[Star] Int[1/(a+c*q*x^n),x] + (d-e*q)/2 \[Star] Int[1/(a-c*q*x^n),x]] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && NegQ[a*c] && IntegerQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+c_.*x_^n2_),x_Symbol] :=
  d \[Star] Int[1/(a+c*x^(2*n)),x] + e \[Star] Int[x^n/(a+c*x^(2*n)),x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && (PosQ[a*c] || Not[IntegerQ[n]])


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[2*d/e-b/c,2]},
  e/(2*c) \[Star] Int[1/Simp[d/e+q*x^(n/2)+x^n,x],x] + 
  e/(2*c) \[Star] Int[1/Simp[d/e-q*x^(n/2)+x^n,x],x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-a*e^2,0] && IGtQ[n/2,0] && (GtQ[2*d/e-b/c,0] || Not[LtQ[2*d/e-b/c,0]] && EqQ[d,e*Rt[a/c,2]])


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (e/2+(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2-q/2+c*x^n),x] + (e/2-(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2+q/2+c*x^n),x]] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-a*e^2,0] && IGtQ[n/2,0] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[-2*d/e-b/c,2]},
  e/(2*c*q) \[Star] Int[(q-2*x^(n/2))/Simp[d/e+q*x^(n/2)-x^n,x],x] + 
  e/(2*c*q) \[Star] Int[(q+2*x^(n/2))/Simp[d/e-q*x^(n/2)-x^n,x],x]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-a*e^2,0] && IGtQ[n/2,0] && Not[GtQ[b^2-4*a*c,0]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (e/2+(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2-q/2+c*x^n),x] + (e/2-(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2+q/2+c*x^n),x]] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && (PosQ[b^2-4*a*c] || Not[IGtQ[n/2,0]])


(* ::Code:: *)
Int[(d_+e_.*x_^n_)/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  With[{q=Rt[a/c,2]},
  With[{r=Rt[2*q-b/c,2]},
  1/(2*c*q*r) \[Star] Int[(d*r-(d-e*q)*x^(n/2))/(q-r*x^(n/2)+x^n),x] + 
  1/(2*c*q*r) \[Star] Int[(d*r+(d-e*q)*x^(n/2))/(q+r*x^(n/2)+x^n),x]]] /;
FreeQ[{a,b,c,d,e},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[n/2,0] && NegQ[b^2-4*a*c]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)^q/(a+b*x^n+c*x^(2*n)),x],x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[q]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_/(a_+c_.*x_^n2_),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)^q/(a+c*x^(2*n)),x],x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && IntegerQ[q]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  e^2/(c*d^2-b*d*e+a*e^2) \[Star] Int[(d+e*x^n)^q,x] + 
  1/(c*d^2-b*d*e+a*e^2) \[Star] Int[(d+e*x^n)^(q+1)*(c*d-b*e-c*e*x^n)/(a+b*x^n+c*x^(2*n)),x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[q]] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_/(a_+c_.*x_^n2_),x_Symbol] :=
  e^2/(c*d^2+a*e^2) \[Star] Int[(d+e*x^n)^q,x] + 
  c/(c*d^2+a*e^2) \[Star] Int[(d+e*x^n)^(q+1)*(d-e*x^n)/(a+c*x^(2*n)),x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && Not[IntegerQ[q]] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_/(a_+b_.*x_^n_+c_.*x_^n2_),x_Symbol] :=
  With[{r=Rt[b^2-4*a*c,2]},
  2*c/r \[Star] Int[(d+e*x^n)^q/(b-r+2*c*x^n),x] - 2*c/r \[Star] Int[(d+e*x^n)^q/(b+r+2*c*x^n),x]] /;
FreeQ[{a,b,c,d,e,n,q},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_/(a_+c_.*x_^n2_),x_Symbol] :=
  With[{r=Rt[-a*c,2]},
  -c/(2*r) \[Star] Int[(d+e*x^n)^q/(r-c*x^n),x] - c/(2*r) \[Star] Int[(d+e*x^n)^q/(r+c*x^n),x]] /;
FreeQ[{a,c,d,e,n,q},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  -x*(d*b^2-a*b*e-2*a*c*d+(b*d-2*a*e)*c*x^n)*(a+b*x^n+c*x^(2*n))^(p+1)/(a*n*(p+1)*(b^2-4*a*c)) + 
  1/(a*n*(p+1)*(b^2-4*a*c)) \[Star] 
    Int[Simp[(n*p+n+1)*d*b^2-a*b*e-2*a*c*d*(2*n*p+2*n+1)+(2*n*p+3*n+1)*(d*b-2*a*e)*c*x^n,x]*
      (a+b*x^n+c*x^(2*n))^(p+1),x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && ILtQ[p,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  -x*(d+e*x^n)*(a+c*x^(2*n))^(p+1)/(2*a*n*(p+1)) + 
  1/(2*a*n*(p+1)) \[Star] Int[(d*(2*n*p+2*n+1)+e*(2*n*p+3*n+1)*x^n)*(a+c*x^(2*n))^(p+1),x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n] && ILtQ[p,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)*(a+b*x^n+c*x^(2*n))^p,x],x] /;
FreeQ[{a,b,c,d,e,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)*(a+c*x^(2*n))^p,x],x] /;
FreeQ[{a,c,d,e,n},x] && EqQ[n2,2*n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  c^p*x^(2*n*p-n+1)*(d+e*x^n)^(q+1)/(e*(2*n*p+n*q+1)) + 
  Int[(d+e*x^n)^q*ExpandToSum[(a+b*x^n+c*x^(2*n))^p-c^p*x^(2*n*p)-d*c^p*(2*n*p-n+1)*x^(2*n*p-n)/(e*(2*n*p+n*q+1)),x],x] /;
FreeQ[{a,b,c,d,e,n,q},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[p,0] && NeQ[2*n*p+n*q+1,0] && IGtQ[n,0] && Not[IGtQ[q,0]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  c^p*x^(2*n*p-n+1)*(d+e*x^n)^(q+1)/(e*(2*n*p+n*q+1)) + 
  Int[(d+e*x^n)^q*ExpandToSum[(a+c*x^(2*n))^p-c^p*x^(2*n*p)-d*c^p*(2*n*p-n+1)*x^(2*n*p-n)/(e*(2*n*p+n*q+1)),x],x] /;
FreeQ[{a,c,d,e,n,q},x] && EqQ[n2,2*n] && IGtQ[p,0] && NeQ[2*n*p+n*q+1,0] && IGtQ[n,0] && Not[IGtQ[q,0]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x],x] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && 
  (IntegersQ[p,q] && Not[IntegerQ[n]] || IGtQ[p,0] || IGtQ[q,0] && Not[IntegerQ[n]])


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^n)^q*(a+c*x^(2*n))^p,x],x] /;
FreeQ[{a,c,d,e,n,p,q},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && 
  (IntegersQ[p,q] && Not[IntegerQ[n]] || IGtQ[p,0] || IGtQ[q,0] && Not[IntegerQ[n]])


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(a+c*x^(2*n))^p,(d/(d^2-e^2*x^(2*n))-e*x^n/(d^2-e^2*x^(2*n)))^(-q),x],x] /;
FreeQ[{a,c,d,e,n,p},x] && EqQ[n2,2*n] && NeQ[c*d^2+a*e^2,0] && Not[IntegerQ[p]] && ILtQ[q,0]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  Unintegrable[(d+e*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[n2,2*n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  Unintegrable[(d+e*x^n)^q*(a+c*x^(2*n))^p,x] /;
FreeQ[{a,c,d,e,n,p,q},x] && EqQ[n2,2*n]


(* ::Code:: *)
Int[(d_+e_.*u_^n_)^q_.*(a_+b_.*u_^n_+c_.*u_^n2_)^p_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(d+e*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x],x,u] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[n2,2*n] && LinearQ[u,x] && NeQ[u,x]


(* ::Code:: *)
Int[(d_+e_.*u_^n_)^q_.*(a_+c_.*u_^n2_)^p_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(d+e*x^n)^q*(a+c*x^(2*n))^p,x],x,u] /;
FreeQ[{a,c,d,e,n,p,q},x] && EqQ[n2,2*n] && LinearQ[u,x] && NeQ[u,x]


(* ::Code:: *)
Int[(d_+e_.*x_^mn_.)^q_.*(a_.+b_.*x_^n_.+c_.*x_^n2_.)^p_.,x_Symbol] :=
  Int[x^(-n*q)*(e+d*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,p},x] && EqQ[n2,2*n] && EqQ[mn,-n] && IntegerQ[q] && (PosQ[n] || Not[IntegerQ[p]])


(* ::Code:: *)
Int[(d_+e_.*x_^mn_.)^q_.*(a_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  Int[x^(mn*q)*(e+d*x^(-mn))^q*(a+c*x^n2)^p,x] /;
FreeQ[{a,c,d,e,mn,p},x] && EqQ[n2,-2*mn] && IntegerQ[q] && (PosQ[n2] || Not[IntegerQ[p]])


(* ::Code:: *)
Int[(d_+e_.*x_^n_.)^q_.*(a_.+b_.*x_^mn_.+c_.*x_^mn2_.)^p_.,x_Symbol] :=
  Int[x^(-2*n*p)*(d+e*x^n)^q*(c+b*x^n+a*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,q},x] && EqQ[mn,-n] && EqQ[mn2,2*mn] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_^n_.)^q_.*(a_.+c_.*x_^mn2_.)^p_.,x_Symbol] :=
  Int[x^(-2*n*p)*(d+e*x^n)^q*(c+a*x^(2*n))^p,x] /;
FreeQ[{a,c,d,e,n,q},x] && EqQ[mn2,-2*n] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_^mn_.)^q_*(a_.+b_.*x_^n_.+c_.*x_^n2_.)^p_.,x_Symbol] :=
  e^IntPart[q]*x^(n*FracPart[q])*(d+e*x^(-n))^FracPart[q]/(1+d*x^n/e)^FracPart[q] \[Star] Int[x^(-n*q)*(1+d*x^n/e)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[n2,2*n] && EqQ[mn,-n] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && PosQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^mn_.)^q_*(a_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  e^IntPart[q]*x^(-mn*FracPart[q])*(d+e*x^mn)^FracPart[q]/(1+d*x^(-mn)/e)^FracPart[q] \[Star] Int[x^(mn*q)*(1+d*x^(-mn)/e)^q*(a+c*x^n2)^p,x] /;
FreeQ[{a,c,d,e,mn,p,q},x] && EqQ[n2,-2*mn] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && PosQ[n2]


(* ::Code:: *)
(* Int[(d_+e_.*x_^mn_.)^q_*(a_.+b_.*x_^n_.+c_.*x_^n2_.)^p_.,x_Symbol] :=
  x^(n*FracPart[q])*(d+e*x^(-n))^FracPart[q]/(e+d*x^n)^FracPart[q] \[Star] Int[x^(-n*q)*(e+d*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[n2,2*n] && EqQ[mn,-n] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && PosQ[n] *)


(* ::Code:: *)
(* Int[(d_+e_.*x_^mn_.)^q_*(a_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  x^(-mn*FracPart[q])*(d+e*x^mn)^FracPart[q]/(e+d*x^(-mn))^FracPart[q] \[Star] Int[x^(mn*q)*(e+d*x^(-mn))^q*(a+c*x^n2)^p,x] /;
FreeQ[{a,c,d,e,mn,p,q},x] && EqQ[n2,-2*mn] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && PosQ[n2] *)


(* ::Code:: *)
Int[(d_+e_.*x_^n_.)^q_.*(a_.+b_.*x_^mn_.+c_.*x_^mn2_.)^p_,x_Symbol] :=
  x^(2*n*FracPart[p])*(a+b*x^(-n)+c*x^(-2*n))^FracPart[p]/(c+b*x^n+a*x^(2*n))^FracPart[p] \[Star] 
    Int[x^(-2*n*p)*(d+e*x^n)^q*(c+b*x^n+a*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[mn,-n] && EqQ[mn2,2*mn] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && PosQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_.)^q_.*(a_.+c_.*x_^mn2_.)^p_,x_Symbol] :=
  x^(2*n*FracPart[p])*(a+c*x^(-2*n))^FracPart[p]/(c+a*x^(2*n))^FracPart[p] \[Star] 
    Int[x^(-2*n*p)*(d+e*x^n)^q*(c+a*x^(2*n))^p,x] /;
FreeQ[{a,c,d,e,n,p,q},x] && EqQ[mn2,-2*n] && Not[IntegerQ[p]] && Not[IntegerQ[q]] && PosQ[n]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+b_.*x_^mn_+c_.*x_^n_.)^p_.,x_Symbol] :=
  Int[x^(-n*p)*(d+e*x^n)^q*(b+a*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,q},x] && EqQ[mn,-n] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(a_+b_.*x_^mn_+c_.*x_^n_.)^p_.,x_Symbol] :=
  x^(n*FracPart[p])*(a+b/x^n+c*x^n)^FracPart[p]/(b+a*x^n+c*x^(2*n))^FracPart[p] \[Star] 
    Int[x^(-n*p)*(d+e*x^n)^q*(b+a*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,n,p,q},x] && EqQ[mn,-n] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(f_+g_.*x_^n_)^r_.*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  (a+b*x^n+c*x^(2*n))^FracPart[p]/((4*c)^IntPart[p]*(b+2*c*x^n)^(2*FracPart[p])) \[Star] 
    Int[(d+e*x^n)^q*(f+g*x^n)^r*(b+2*c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,d,e,f,g,n,p,q,r},x] && EqQ[n2,2*n] && EqQ[b^2-4*a*c,0] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(f_+g_.*x_^n_)^r_.*(a_+b_.*x_^n_+c_.*x_^n2_)^p_.,x_Symbol] :=
  Int[(d+e*x^n)^(p+q)*(f+g*x^n)^r*(a/d+c/e*x^n)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,n,q,r},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(f_+g_.*x_^n_)^r_.*(a_+c_.*x_^n2_)^p_.,x_Symbol] :=
  Int[(d+e*x^n)^(p+q)*(f+g*x^n)^r*(a/d+c/e*x^n)^p,x] /;
FreeQ[{a,c,d,e,f,g,n,q,r},x] && EqQ[n2,2*n] && EqQ[c*d^2+a*e^2,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(f_+g_.*x_^n_)^r_.*(a_+b_.*x_^n_+c_.*x_^n2_)^p_,x_Symbol] :=
  (a+b*x^n+c*x^(2*n))^FracPart[p]/((d+e*x^n)^FracPart[p]*(a/d+(c*x^n)/e)^FracPart[p]) \[Star] 
    Int[(d+e*x^n)^(p+q)*(f+g*x^n)^r*(a/d+c/e*x^n)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,n,p,q,r},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d_+e_.*x_^n_)^q_.*(f_+g_.*x_^n_)^r_.*(a_+c_.*x_^n2_)^p_,x_Symbol] :=
  (a+c*x^(2*n))^FracPart[p]/((d+e*x^n)^FracPart[p]*(a/d+(c*x^n)/e)^FracPart[p]) \[Star] 
    Int[(d+e*x^n)^(p+q)*(f+g*x^n)^r*(a/d+c/e*x^n)^p,x] /;
FreeQ[{a,c,d,e,f,g,n,p,q,r},x] && EqQ[n2,2*n] && EqQ[c*d^2+a*e^2,0] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d1_+e1_.*x_^non2_.)^q_.*(d2_+e2_.*x_^non2_.)^q_.*(a_.+b_.*x_^n_+c_.*x_^n2_)^p_.,x_Symbol] :=
  Int[(d1*d2+e1*e2*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d1,e1,d2,e2,n,p,q},x] && EqQ[n2,2*n] && EqQ[non2,n/2] && EqQ[d2*e1+d1*e2,0] && (IntegerQ[q] || GtQ[d1,0] && GtQ[d2,0])


(* ::Code:: *)
Int[(d1_+e1_.*x_^non2_.)^q_.*(d2_+e2_.*x_^non2_.)^q_.*(a_.+b_.*x_^n_+c_.*x_^n2_)^p_.,x_Symbol] :=
  (d1+e1*x^(n/2))^FracPart[q]*(d2+e2*x^(n/2))^FracPart[q]/(d1*d2+e1*e2*x^n)^FracPart[q] \[Star] 
    Int[(d1*d2+e1*e2*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d1,e1,d2,e2,n,p,q},x] && EqQ[n2,2*n] && EqQ[non2,n/2] && EqQ[d2*e1+d1*e2,0]


(* ::Code:: *)
Int[(A_+B_.*x_^m_.)*(d_+e_.*x_^n_)^q_.*(a_+b_.*x_^n_+c_.*x_^n2_)^p_.,x_Symbol] :=
  A \[Star] Int[(d+e*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] + B \[Star] Int[x^m*(d+e*x^n)^q*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,e,A,B,m,n,p,q},x] && EqQ[n2,2*n] && EqQ[m-n+1,0]


(* ::Code:: *)
Int[(A_+B_.*x_^m_.)*(d_+e_.*x_^n_)^q_.*(a_+c_.*x_^n2_)^p_.,x_Symbol] :=
  A \[Star] Int[(d+e*x^n)^q*(a+c*x^(2*n))^p,x] + B \[Star] Int[x^m*(d+e*x^n)^q*(a+c*x^(2*n))^p,x] /;
FreeQ[{a,c,d,e,A,B,m,n,p,q},x] && EqQ[n2,2*n] && EqQ[m-n+1,0]



