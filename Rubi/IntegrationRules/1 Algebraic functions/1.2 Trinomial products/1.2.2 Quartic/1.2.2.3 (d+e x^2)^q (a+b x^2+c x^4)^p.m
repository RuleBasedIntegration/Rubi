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
Int[(d_+e_.*x_^2)/(b_.*x_^2+c_.*x_^4)^(3/4),x_Symbol] :=
  -2*(c*d-b*e)*(b*x^2+c*x^4)^(1/4)/(b*c*x) + e/c \[Star] Int[(b*x^2+c*x^4)^(1/4)/x^2,x] /;
FreeQ[{b,c,d,e},x]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  e*(b*x^2+c*x^4)^(p+1)/(c*(4*p+3)*x) /;
FreeQ[{b,c,d,e,p},x] && Not[IntegerQ[p]] && NeQ[4*p+3,0] && EqQ[b*e*(2*p+1)-c*d*(4*p+3),0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  e*(b*x^2+c*x^4)^(p+1)/(c*(4*p+3)*x) - ((b*e*(2*p+1)-c*d*(4*p+3))/(c*(4*p+3))) \[Star] Int[(b*x^2+c*x^4)^p,x] /;
FreeQ[{b,c,d,e,p},x] && Not[IntegerQ[p]] && NeQ[4*p+3,0] && NeQ[b*e*(2*p+1)-c*d*(4*p+3),0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_.*(b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  (b*x^2+c*x^4)^FracPart[p]/(x^(2*FracPart[p])*(b+c*x^2)^FracPart[p]) \[Star] Int[x^(2*p)*(d+e*x^2)^q*(b+c*x^2)^p,x] /;
FreeQ[{b,c,d,e,p,q},x] && Not[IntegerQ[p]]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_.*(a_+b_.*x_^2+c_.*x_^4)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)^q*(a+b*x^2+c*x^4)^p,x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p,0] && IGtQ[q,-2]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_.*(a_+c_.*x_^4)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)^q*(a+c*x^4)^p,x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p,0] && IGtQ[q,-2]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_.,x_Symbol] :=
  a^p*x*(d+e*x^2)^(q+1)/d + 
  1/d \[Star] Int[x^2*(d+e*x^2)^q*(d*PolynomialQuotient[(a+b*x^2+c*x^4)^p-a^p,x^2,x]-e*a^p*(2*q+3)),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p,0] && ILtQ[q+1/2,0] && LtQ[4*p+2*q+1,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_.,x_Symbol] :=
  a^p*x*(d+e*x^2)^(q+1)/d + 
  1/d \[Star] Int[x^2*(d+e*x^2)^q*(d*PolynomialQuotient[(a+c*x^4)^p-a^p,x^2,x]-e*a^p*(2*q+3)),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p,0] && ILtQ[q+1/2,0] && LtQ[4*p+2*q+1,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_.,x_Symbol] :=
  With[{Qx=PolynomialQuotient[(a+b*x^2+c*x^4)^p,d+e*x^2,x],
        R=Coeff[PolynomialRemainder[(a+b*x^2+c*x^4)^p,d+e*x^2,x],x,0]},
  -R*x*(d+e*x^2)^(q+1)/(2*d*(q+1)) + 
  1/(2*d*(q+1)) \[Star] Int[(d+e*x^2)^(q+1)*ExpandToSum[2*d*(q+1)*Qx+R*(2*q+3),x],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p,0] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_.,x_Symbol] :=
  With[{Qx=PolynomialQuotient[(a+c*x^4)^p,d+e*x^2,x],
        R=Coeff[PolynomialRemainder[(a+c*x^4)^p,d+e*x^2,x],x,0]},
  -R*x*(d+e*x^2)^(q+1)/(2*d*(q+1)) + 
  1/(2*d*(q+1)) \[Star] Int[(d+e*x^2)^(q+1)*ExpandToSum[2*d*(q+1)*Qx+R*(2*q+3),x],x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p,0] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_.,x_Symbol] :=
  c^p*x^(4*p-1)*(d+e*x^2)^(q+1)/(e*(4*p+2*q+1)) + 
  1/(e*(4*p+2*q+1)) \[Star] Int[(d+e*x^2)^q*ExpandToSum[e*(4*p+2*q+1)*(a+b*x^2+c*x^4)^p-d*c^p*(4*p-1)*x^(4*p-2)-e*c^p*(4*p+2*q+1)*x^(4*p),x],x] /;
FreeQ[{a,b,c,d,e,q},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p,0] && Not[LtQ[q,-1]]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_.,x_Symbol] :=
  c^p*x^(4*p-1)*(d+e*x^2)^(q+1)/(e*(4*p+2*q+1)) + 
  1/(e*(4*p+2*q+1)) \[Star] Int[(d+e*x^2)^q*ExpandToSum[e*(4*p+2*q+1)*(a+c*x^4)^p-d*c^p*(4*p-1)*x^(4*p-2)-e*c^p*(4*p+2*q+1)*x^(4*p),x],x] /;
FreeQ[{a,c,d,e,q},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p,0] && Not[LtQ[q,-1]]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[2*d/e-b/c,2]},
  e/(2*c) \[Star] Int[1/Simp[d/e+q*x+x^2,x],x] + e/(2*c) \[Star] Int[1/Simp[d/e-q*x+x^2,x],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-a*e^2,0] && (GtQ[2*d/e-b/c,0] || Not[LtQ[2*d/e-b/c,0]] && EqQ[d-e*Rt[a/c,2],0])


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[2*d/e,2]},
  e/(2*c) \[Star] Int[1/Simp[d/e+q*x+x^2,x],x] + e/(2*c) \[Star] Int[1/Simp[d/e-q*x+x^2,x],x]] /;
FreeQ[{a,c,d,e},x] && EqQ[c*d^2-a*e^2,0] && PosQ[d*e]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (e/2+(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2-q/2+c*x^2),x] + (e/2-(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2+q/2+c*x^2),x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-a*e^2,0] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[-2*d/e-b/c,2]},
  e/(2*c*q) \[Star] Int[(q-2*x)/Simp[d/e+q*x-x^2,x],x] + e/(2*c*q) \[Star] Int[(q+2*x)/Simp[d/e-q*x-x^2,x],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-a*e^2,0] && Not[GtQ[b^2-4*a*c,0]]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[-2*d/e,2]},
  e/(2*c*q) \[Star] Int[(q-2*x)/Simp[d/e+q*x-x^2,x],x] + e/(2*c*q) \[Star] Int[(q+2*x)/Simp[d/e-q*x-x^2,x],x]] /;
FreeQ[{a,c,d,e},x] && EqQ[c*d^2-a*e^2,0] && NegQ[d*e]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (e/2+(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2-q/2+c*x^2),x] + (e/2-(2*c*d-b*e)/(2*q)) \[Star] Int[1/(b/2+q/2+c*x^2),x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-a*e^2,0] && PosQ[b^2-4*a*c]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  (e/2+c*d/(2*q)) \[Star] Int[1/(-q+c*x^2),x] + (e/2-c*d/(2*q)) \[Star] Int[1/(q+c*x^2),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2-a*e^2,0] && PosQ[-a*c]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[a*c,2]},
  (d*q+a*e)/(2*a*c) \[Star] Int[(q+c*x^2)/(a+c*x^4),x] + (d*q-a*e)/(2*a*c) \[Star] Int[(q-c*x^2)/(a+c*x^4),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[-a*c]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  With[{q=Rt[a/c,2]},
  With[{r=Rt[2*q-b/c,2]},
  1/(2*c*q*r) \[Star] Int[(d*r-(d-e*q)*x)/(q-r*x+x^2),x] + 1/(2*c*q*r) \[Star] Int[(d*r+(d-e*q)*x)/(q+r*x+x^2),x]]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && NegQ[b^2-4*a*c]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)^q/(a+b*x^2+c*x^4),x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[q]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/(a_+c_.*x_^4),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)^q/(a+c*x^4),x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IntegerQ[q]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  e^2/(c*d^2-b*d*e+a*e^2) \[Star] Int[(d+e*x^2)^q,x] + 
  1/(c*d^2-b*d*e+a*e^2) \[Star] Int[(d+e*x^2)^(q+1)*(c*d-b*e-c*e*x^2)/(a+b*x^2+c*x^4),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[q]] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/(a_+c_.*x_^4),x_Symbol] :=
  e^2/(c*d^2+a*e^2) \[Star] Int[(d+e*x^2)^q,x] + 
  c/(c*d^2+a*e^2) \[Star] Int[(d+e*x^2)^(q+1)*(d-e*x^2)/(a+c*x^4),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && Not[IntegerQ[q]] && LtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/(a_+b_.*x_^2+c_.*x_^4),x_Symbol] :=
  With[{r=Rt[b^2-4*a*c,2]},
  2*c/r \[Star] Int[(d+e*x^2)^q/(b-r+2*c*x^2),x] - 2*c/r \[Star] Int[(d+e*x^2)^q/(b+r+2*c*x^2),x]] /;
FreeQ[{a,b,c,d,e,q},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/(a_+c_.*x_^4),x_Symbol] :=
  With[{r=Rt[-a*c,2]},
  -c/(2*r) \[Star] Int[(d+e*x^2)^q/(r-c*x^2),x] - c/(2*r) \[Star] Int[(d+e*x^2)^q/(r+c*x^2),x]] /;
FreeQ[{a,c,d,e,q},x] && NeQ[c*d^2+a*e^2,0] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  x*(2*b*e*p+c*d*(4*p+3)+c*e*(4*p+1)*x^2)*(a+b*x^2+c*x^4)^p/(c*(4*p+1)*(4*p+3)) + 
  2*p/(c*(4*p+1)*(4*p+3)) \[Star] Int[Simp[2*a*c*d*(4*p+3)-a*b*e+(2*a*c*e*(4*p+1)+b*c*d*(4*p+3)-b^2*e*(2*p+1))*x^2,x]*
    (a+b*x^2+c*x^4)^(p-1),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && GtQ[p,0] && FractionQ[p] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(a_+c_.*x_^4)^p_,x_Symbol] :=
  x*(d*(4*p+3)+e*(4*p+1)*x^2)*(a+c*x^4)^p/((4*p+1)*(4*p+3)) + 
  2*p/((4*p+1)*(4*p+3)) \[Star] Int[Simp[2*a*d*(4*p+3)+(2*a*e*(4*p+1))*x^2,x]*(a+c*x^4)^(p-1),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && GtQ[p,0] && FractionQ[p] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  x*(a*b*e-d*(b^2-2*a*c)-c*(b*d-2*a*e)*x^2)*(a+b*x^2+c*x^4)^(p+1)/(2*a*(p+1)*(b^2-4*a*c)) + 
  1/(2*a*(p+1)*(b^2-4*a*c)) \[Star] Int[Simp[(2*p+3)*d*b^2-a*b*e-2*a*c*d*(4*p+5)+(4*p+7)*(d*b-2*a*e)*c*x^2,x]*
    (a+b*x^2+c*x^4)^(p+1),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(a_+c_.*x_^4)^p_,x_Symbol] :=
  -x*(d+e*x^2)*(a+c*x^4)^(p+1)/(4*a*(p+1)) + 
  1/(4*a*(p+1)) \[Star] Int[Simp[d*(4*p+5)+e*(4*p+7)*x^2,x]*(a+c*x^4)^(p+1),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && IntegerQ[2*p]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  2*Sqrt[-c] \[Star] Int[(d+e*x^2)/(Sqrt[b+q+2*c*x^2]*Sqrt[-b+q-2*c*x^2]),x]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && LtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  Sqrt[-c] \[Star] Int[(d+e*x^2)/(Sqrt[q+c*x^2]*Sqrt[q-c*x^2]),x]] /;
FreeQ[{a,c,d,e},x] && GtQ[a,0] && LtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[c/a,4]},
  -d*x*Sqrt[a+b*x^2+c*x^4]/(a*(1+q^2*x^2)) + 
  d*(1+q^2*x^2)*Sqrt[(a+b*x^2+c*x^4)/(a*(1+q^2*x^2)^2)]/(q*Sqrt[a+b*x^2+c*x^4])*EllipticE[2*ArcTan[q*x],1/2-b*q^2/(4*c)] /;
 EqQ[e+d*q^2,0]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && GtQ[c/a,0] && LtQ[b/a,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (e+d*q)/q \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] - e/q \[Star] Int[(1-q*x^2)/Sqrt[a+b*x^2+c*x^4],x] /;
 NeQ[e+d*q,0]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && GtQ[c/a,0] && LtQ[b/a,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  e*x*(b+q+2*c*x^2)/(2*c*Sqrt[a+b*x^2+c*x^4]) - 
  e*q*Sqrt[(2*a+(b-q)*x^2)/(2*a+(b+q)*x^2)]*Sqrt[(2*a+(b+q)*x^2)/q]/(2*c*Sqrt[a+b*x^2+c*x^4]*Sqrt[a/(2*a+(b+q)*x^2)])*
    EllipticE[ArcSin[x/Sqrt[(2*a+(b+q)*x^2)/(2*q)]],(b+q)/(2*q)] /;
 EqQ[2*c*d-e*(b-q),0]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && LtQ[a,0] && GtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  e*x*(q+c*x^2)/(c*Sqrt[a+c*x^4]) - 
  Sqrt[2]*e*q*Sqrt[-a+q*x^2]*Sqrt[(a+q*x^2)/q]/(Sqrt[-a]*c*Sqrt[a+c*x^4])*
    EllipticE[ArcSin[x/Sqrt[(a+q*x^2)/(2*q)]],1/2] /;
 EqQ[c*d+e*q,0] && IntegerQ[q]] /;
FreeQ[{a,c,d,e},x] && LtQ[a,0] && GtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  e*x*(q+c*x^2)/(c*Sqrt[a+c*x^4]) - 
  Sqrt[2]*e*q*Sqrt[(a-q*x^2)/(a+q*x^2)]*Sqrt[(a+q*x^2)/q]/(c*Sqrt[a+c*x^4]*Sqrt[a/(a+q*x^2)])*
    EllipticE[ArcSin[x/Sqrt[(a+q*x^2)/(2*q)]],1/2] /;
 EqQ[c*d+e*q,0]] /;
FreeQ[{a,c,d,e},x] && LtQ[a,0] && GtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (2*c*d-e*(b-q))/(2*c) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] + e/(2*c) \[Star] Int[(b-q+2*c*x^2)/Sqrt[a+b*x^2+c*x^4],x] /;
 NeQ[2*c*d-e*(b-q),0]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && LtQ[a,0] && GtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  (c*d+e*q)/c \[Star] Int[1/Sqrt[a+c*x^4],x] - e/c \[Star] Int[(q-c*x^2)/Sqrt[a+c*x^4],x] /;
 NeQ[c*d+e*q,0]] /;
FreeQ[{a,c,d,e},x] && LtQ[a,0] && GtQ[c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  d \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] + e \[Star] Int[x^2/Sqrt[a+b*x^2+c*x^4],x] /;
 PosQ[(b+q)/a] || PosQ[(b-q)/a]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  d \[Star] Int[1/Sqrt[a+c*x^4],x] + e \[Star] Int[x^2/Sqrt[a+c*x^4],x] /;
FreeQ[{a,c,d,e},x] && GtQ[-a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  -a*e*Rt[-(b+q)/(2*a),2]*Sqrt[1+(b+q)*x^2/(2*a)]*Sqrt[1+(b-q)*x^2/(2*a)]/(c*Sqrt[a+b*x^2+c*x^4])*
    EllipticE[ArcSin[Rt[-(b+q)/(2*a),2]*x],(b-q)/(b+q)] /;
 NegQ[(b+q)/a] && EqQ[2*c*d-e*(b+q),0] && Not[SimplerSqrtQ[-(b-q)/(2*a),-(b+q)/(2*a)]]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (2*c*d-e*(b+q))/(2*c) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] + e/(2*c) \[Star] Int[(b+q+2*c*x^2)/Sqrt[a+b*x^2+c*x^4],x] /;
 NegQ[(b+q)/a] && NeQ[2*c*d-e*(b+q),0] && Not[SimplerSqrtQ[-(b-q)/(2*a),-(b+q)/(2*a)]]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  -a*e*Rt[-(b-q)/(2*a),2]*Sqrt[1+(b-q)*x^2/(2*a)]*Sqrt[1+(b+q)*x^2/(2*a)]/(c*Sqrt[a+b*x^2+c*x^4])*
    EllipticE[ArcSin[Rt[-(b-q)/(2*a),2]*x],(b+q)/(b-q)] /;
 NegQ[(b-q)/a] && EqQ[2*c*d-e*(b-q),0]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  (2*c*d-e*(b-q))/(2*c) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] + e/(2*c) \[Star] Int[(b-q+2*c*x^2)/Sqrt[a+b*x^2+c*x^4],x] /;
 NegQ[(b-q)/a] && NeQ[2*c*d-e*(b-q),0]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[c/a,4]},
  -d*x*Sqrt[a+b*x^2+c*x^4]/(a*(1+q^2*x^2)) + 
  d*(1+q^2*x^2)*Sqrt[(a+b*x^2+c*x^4)/(a*(1+q^2*x^2)^2)]/(q*Sqrt[a+b*x^2+c*x^4])*EllipticE[2*ArcTan[q*x],1/2-b*q^2/(4*c)] /;
 EqQ[e+d*q^2,0]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && PosQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[c/a,4]},
  -d*x*Sqrt[a+c*x^4]/(a*(1+q^2*x^2)) + 
  d*(1+q^2*x^2)*Sqrt[(a+c*x^4)/(a*(1+q^2*x^2)^2)]/(q*Sqrt[a+c*x^4])*EllipticE[2*ArcTan[q*x],1/2] /;
 EqQ[e+d*q^2,0]] /;
FreeQ[{a,c,d,e},x] && PosQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (e+d*q)/q \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] - e/q \[Star] Int[(1-q*x^2)/Sqrt[a+b*x^2+c*x^4],x] /;
 NeQ[e+d*q,0]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && PosQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (e+d*q)/q \[Star] Int[1/Sqrt[a+c*x^4],x] - e/q \[Star] Int[(1-q*x^2)/Sqrt[a+c*x^4],x] /;
 NeQ[e+d*q,0]] /;
FreeQ[{a,c,d,e},x] && PosQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[-c/a,2]},
  (d*q-e)/q \[Star] Int[1/Sqrt[a+c*x^4],x] + e/q \[Star] Int[(1+q*x^2)/Sqrt[a+c*x^4],x]] /;
FreeQ[{a,c,d,e},x] && NegQ[c/a] && NeQ[c*d^2+a*e^2,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  Sqrt[1+2*c*x^2/(b-q)]*Sqrt[1+2*c*x^2/(b+q)]/Sqrt[a+b*x^2+c*x^4] \[Star] 
    Int[(d+e*x^2)/(Sqrt[1+2*c*x^2/(b-q)]*Sqrt[1+2*c*x^2/(b+q)]),x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NegQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)*(a+b*x^2+c*x^4)^p,x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)*(a_+c_.*x_^4)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)*(a+c*x^4)^p,x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0]


(* ::Code:: *)
(* Int[(d_+e_.*x_^2)^2/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  e^2*x*Sqrt[a+b*x^2+c*x^4]/(3*c) + 
  2*(3*c*d-b*e)/(3*c) \[Star] Int[(d+e*x^2)/Sqrt[a+b*x^2+c*x^4],x] - 
  (3*c*d^2-2*b*d*e+a*e^2)/(3*c) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] *)


(* ::Code:: *)
(* Int[(d_+e_.*x_^2)^2/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  e^2*x*Sqrt[a+c*x^4]/(3*c) + 
  2*d \[Star] Int[(d+e*x^2)/Sqrt[a+c*x^4],x] - 
  (3*c*d^2+a*e^2)/(3*c) \[Star] Int[1/Sqrt[a+c*x^4],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] *)


(* ::Code:: *)
(* Int[(d_+e_.*x_^2)^q_/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  e^2*x*(d+e*x^2)^(q-2)*Sqrt[a+b*x^2+c*x^4]/(c*(2*q-1)) + 
  2*(q-1)*(3*c*d-b*e)/(c*(2*q-1)) \[Star] Int[(d+e*x^2)^(q-1)/Sqrt[a+b*x^2+c*x^4],x] - 
  (2*q-3)*(3*c*d^2-2*b*d*e+a*e^2)/(c*(2*q-1)) \[Star] Int[(d+e*x^2)^(q-2)/Sqrt[a+b*x^2+c*x^4],x] + 
  2*d*(q-2)*(c*d^2-b*d*e+a*e^2)/(c*(2*q-1)) \[Star] Int[(d+e*x^2)^(q-3)/Sqrt[a+b*x^2+c*x^4],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && IGtQ[q,2] *)


(* ::Code:: *)
(* Int[(d_+e_.*x_^2)^q_/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  e^2*x*(d+e*x^2)^(q-2)*Sqrt[a+c*x^4]/(c*(2*q-1)) + 
  6*d*(q-1)/(2*q-1) \[Star] Int[(d+e*x^2)^(q-1)/Sqrt[a+c*x^4],x] - 
  (2*q-3)*(3*c*d^2+a*e^2)/(c*(2*q-1)) \[Star] Int[(d+e*x^2)^(q-2)/Sqrt[a+c*x^4],x] + 
  2*d*(q-2)*(c*d^2+a*e^2)/(c*(2*q-1)) \[Star] Int[(d+e*x^2)^(q-3)/Sqrt[a+c*x^4],x] /;
FreeQ[{a,c,d,e},x] && IGtQ[q,2] *)


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  With[{f=Coeff[PolynomialRemainder[(d+e*x^2)^q,a+b*x^2+c*x^4,x],x,0],
        g=Coeff[PolynomialRemainder[(d+e*x^2)^q,a+b*x^2+c*x^4,x],x,2]},
  x*(a+b*x^2+c*x^4)^(p+1)*(a*b*g-f*(b^2-2*a*c)-c*(b*f-2*a*g)*x^2)/(2*a*(p+1)*(b^2-4*a*c)) + 
  1/(2*a*(p+1)*(b^2-4*a*c)) \[Star] Int[(a+b*x^2+c*x^4)^(p+1)*
    ExpandToSum[2*a*(p+1)*(b^2-4*a*c)*PolynomialQuotient[(d+e*x^2)^q,a+b*x^2+c*x^4,x]+
      b^2*f*(2*p+3)-2*a*c*f*(4*p+5)-a*b*g+c*(4*p+7)*(b*f-2*a*g)*x^2,x],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[q,1] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  e^q*x^(2*q-3)*(a+b*x^2+c*x^4)^(p+1)/(c*(4*p+2*q+1)) + 
  1/(c*(4*p+2*q+1)) \[Star] Int[(a+b*x^2+c*x^4)^p*
    ExpandToSum[c*(4*p+2*q+1)*(d+e*x^2)^q-a*(2*q-3)*e^q*x^(2*q-4)-b*(2*p+2*q-1)*e^q*x^(2*q-2)-c*(4*p+2*q+1)*e^q*x^(2*q),x],x] /;
FreeQ[{a,b,c,d,e,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[q,1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_,x_Symbol] :=
  e^q*x^(2*q-3)*(a+c*x^4)^(p+1)/(c*(4*p+2*q+1)) + 
  1/(c*(4*p+2*q+1)) \[Star] Int[(a+c*x^4)^p*
    ExpandToSum[c*(4*p+2*q+1)*(d+e*x^2)^q-a*(2*q-3)*e^q*x^(2*q-4)-c*(4*p+2*q+1)*e^q*x^(2*q),x],x] /;
FreeQ[{a,c,d,e,p},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[q,1]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  -c/e^2 \[Star] Int[(d-e*x^2)/Sqrt[a+b*x^2+c*x^4],x] + Int[(2*a+b*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && EqQ[c*d^2-a*e^2,0]


(* ::Code:: *)
Int[Sqrt[a_+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  -c/e^2 \[Star] Int[(d-e*x^2)/Sqrt[a+c*x^4],x] + 2*a \[Star] Int[1/((d+e*x^2)*Sqrt[a+c*x^4]),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && EqQ[c*d^2-a*e^2,0]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  1/(2*e) \[Star] Int[(b-q+2*c*x^2)/Sqrt[a+b*x^2+c*x^4],x] - 
  1/(2*e) \[Star] Int[(b*d-2*a*e-d*q+(2*c*d-b*e-e*q)*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
(* Int[Sqrt[a_+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  -1/e \[Star] Int[(q-c*x^2)/Sqrt[a+c*x^4],x] + 
  1/e \[Star] Int[(a*e+d*q-(c*d-e*q)*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[-a*c,0] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[-a*c] *)


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (c*d^2-b*d*e+a*e^2)/(e*(e-d*q)) \[Star] Int[(1+q*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] - 
  1/(e*(e-d*q)) \[Star] Int[(c*d-b*e+a*e*q-(c*e-a*d*q^3)*x^2)/Sqrt[a+b*x^2+c*x^4],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[Sqrt[a_+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (c*d^2+a*e^2)/(e*(e-d*q)) \[Star] Int[(1+q*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x] - 
  1/(e*(e-d*q)) \[Star] Int[(c*d+a*e*q-(c*e-a*d*q^3)*x^2)/Sqrt[a+c*x^4],x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  (c*d^2-b*d*e+a*e^2)/e^2 \[Star] Int[1/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] - 
  1/e^2 \[Star] Int[(c*d-b*e-c*e*x^2)/Sqrt[a+b*x^2+c*x^4],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[Sqrt[a_+c_.*x_^4]/(d_+e_.*x_^2),x_Symbol] :=
  (c*d^2+a*e^2)/e^2 \[Star] Int[1/((d+e*x^2)*Sqrt[a+c*x^4]),x] - 
  1/e^2 \[Star] Int[(c*d-c*e*x^2)/Sqrt[a+c*x^4],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  -1/e^2 \[Star] Int[(c*d-b*e-c*e*x^2)*(a+b*x^2+c*x^4)^(p-1),x] + 
  (c*d^2-b*d*e+a*e^2)/e^2 \[Star] Int[(a+b*x^2+c*x^4)^(p-1)/(d+e*x^2),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p-1/2,0] && EqQ[c*d^2-a*e^2,0]


(* ::Code:: *)
Int[(a_+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  -1/e^2 \[Star] Int[(c*d-c*e*x^2)*(a+c*x^4)^(p-1),x] + 
  (c*d^2+a*e^2)/e^2 \[Star] Int[(a+c*x^4)^(p-1)/(d+e*x^2),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p-1/2,0] && EqQ[c*d^2-a*e^2,0]


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  -(2*c*d-e*(b+q))*(c*d^2-b*d*e+a*e^2)^(p-1/2)/(4*c*e^(2*p)) \[Star] 
    Int[(b-q+2*c*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] + 
  1/(4*c*e^(2*p)) \[Star] Int[(1/Sqrt[a+b*x^2+c*x^4])*
      ExpandToSum[(4*c*e^(2*p)*(a+b*x^2+c*x^4)^(p+1/2)+(2*c*d-e*(b+q))*(c*d^2-b*d*e+a*e^2)^(p-1/2)*(b-q+2*c*x^2))/(d+e*x^2),x],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p-1/2,0] && PosQ[b^2-4*a*c] && PosQ[c/a]


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  -(c*d^2-b*d*e+a*e^2)^(p+1/2)/(e^(2*p)*(c*d^2-a*e^2)) \[Star] 
    Int[(a*d*Rt[c/a,2]+a*e+(c*d+a*e*Rt[c/a,2])*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] + 
  1/(e^(2*p)*(c*d^2-a*e^2)) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4]*
      ExpandToSum[(e^(2*p)*(c*d^2-a*e^2)*(a+b*x^2+c*x^4)^(p+1/2) + 
        (c*d^2-b*d*e+a*e^2)^(p+1/2)*(a*d*Rt[c/a,2]+a*e+(c*d+a*e*Rt[c/a,2])*x^2))/(d+e*x^2),x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p-1/2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[(a_+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  -(c*d^2+a*e^2)^(p+1/2)/(e^(2*p)*(c*d^2-a*e^2)) \[Star] 
    Int[(a*d*Rt[c/a,2]+a*e+(c*d+a*e*Rt[c/a,2])*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x] + 
  1/(e^(2*p)*(c*d^2-a*e^2)) \[Star] Int[1/Sqrt[a+c*x^4]*
      ExpandToSum[(e^(2*p)*(c*d^2-a*e^2)*(a+c*x^4)^(p+1/2) + 
        (c*d^2+a*e^2)^(p+1/2)*(a*d*Rt[c/a,2]+a*e+(c*d+a*e*Rt[c/a,2])*x^2))/(d+e*x^2),x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p-1/2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  (c*d^2-b*d*e+a*e^2)^(p+1/2)/e^(2*p+1) \[Star] Int[1/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] + 
  1/e^(2*p+1) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4]*ExpandToSum[(e^(2*p+1)*(a+b*x^2+c*x^4)^(p+1/2)-(c*d^2-b*d*e+a*e^2)^(p+1/2))/(d+e*x^2),x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IGtQ[p-1/2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[(a_+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  (c*d^2+a*e^2)^(p+1/2)/e^(2*p+1) \[Star] Int[1/((d+e*x^2)*Sqrt[a+c*x^4]),x] + 
  1/e^(2*p+1) \[Star] Int[1/Sqrt[a+c*x^4]*ExpandToSum[(e^(2*p+1)*(a+c*x^4)^(p+1/2)-(c*d^2+a*e^2)^(p+1/2))/(d+e*x^2),x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && IGtQ[p-1/2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  1/(2*d) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] + 1/(2*d) \[Star] Int[(d-e*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && EqQ[c*d^2-a*e^2,0]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  1/(2*d) \[Star] Int[1/Sqrt[a+c*x^4],x] + 1/(2*d) \[Star] Int[(d-e*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && EqQ[c*d^2-a*e^2,0]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  2*Sqrt[-c] \[Star] Int[1/((d+e*x^2)*Sqrt[b+q+2*c*x^2]*Sqrt[-b+q-2*c*x^2]),x]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[c,0]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  Sqrt[-c] \[Star] Int[1/((d+e*x^2)*Sqrt[q+c*x^2]*Sqrt[q-c*x^2]),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && GtQ[a,0] && LtQ[c,0]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  2*c/(2*c*d-e*(b-q)) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] - e/(2*c*d-e*(b-q)) \[Star] Int[(b-q+2*c*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x]] /;
FreeQ[{a,b,c,d,e},x] && GtQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[LtQ[c,0]]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[-a*c,2]},
  c/(c*d+e*q) \[Star] Int[1/Sqrt[a+c*x^4],x] + e/(c*d+e*q) \[Star] Int[(q-c*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && GtQ[-a*c,0] && Not[LtQ[c,0]]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (c*d+a*e*q)/(c*d^2-a*e^2) \[Star] Int[1/Sqrt[a+b*x^2+c*x^4],x] - 
  (a*e*(e+d*q))/(c*d^2-a*e^2) \[Star] Int[(1+q*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[c/a,2]},
  (c*d+a*e*q)/(c*d^2-a*e^2) \[Star] Int[1/Sqrt[a+c*x^4],x] - 
  (a*e*(e+d*q))/(c*d^2-a*e^2) \[Star] Int[(1+q*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[-c/a,4]},
  1/(d*Sqrt[a]*q)*EllipticPi[-e/(d*q^2),ArcSin[q*x],-1]] /;
FreeQ[{a,c,d,e},x] && NegQ[c/a] && GtQ[a,0]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  Sqrt[1+c*x^4/a]/Sqrt[a+c*x^4] \[Star] Int[1/((d+e*x^2)*Sqrt[1+c*x^4/a]),x] /;
FreeQ[{a,c,d,e},x] && NegQ[c/a] && Not[GtQ[a,0]]


(* ::Code:: *)
Int[1/((d_+e_.*x_^2)*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  Sqrt[1+2*c*x^2/(b-q)]*Sqrt[1+2*c*x^2/(b+q)]/Sqrt[a+b*x^2+c*x^4] \[Star] 
    Int[1/((d+e*x^2)*Sqrt[1+2*c*x^2/(b-q)]*Sqrt[1+2*c*x^2/(b+q)]),x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  1/(c*d^2-b*d*e+a*e^2) \[Star] Int[(c*d-b*e-c*e*x^2)*(a+b*x^2+c*x^4)^p,x] + 
  e^2/(c*d^2-b*d*e+a*e^2) \[Star] Int[(a+b*x^2+c*x^4)^(p+1)/(d+e*x^2),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[p+1/2,0] && (EqQ[c*d^2-a*e^2,0] || NiceSqrtQ[b^2-4*a*c])


(* ::Code:: *)
Int[(a_+c_.*x_^4)^p_/(d_+e_.*x_^2),x_Symbol] :=
  1/(c*d^2+a*e^2) \[Star] Int[(c*d-c*e*x^2)*(a+c*x^4)^p,x] + 
  e^2/(c*d^2+a*e^2) \[Star] Int[(a+c*x^4)^(p+1)/(d+e*x^2),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[p+1/2,0] && EqQ[c*d^2-a*e^2,0] && (EqQ[c*d^2-a*e^2,0] || NiceSqrtQ[-a*c])


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_.+e_.*x_^2),x_Symbol] :=
  -(c*d^2-b*d*e+a*e^2)^(p+1/2)/(e^(2*p)*(Rt[c/a,2]*d-e)) \[Star] 
    Int[(1+Rt[c/a,2]*x^2)/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] + 
  (c*d^2-b*d*e+a*e^2)^(p+1/2)/(Rt[c/a,2]*d-e) \[Star] Int[(a+b*x^2+c*x^4)^p*
      ExpandToSum[((Rt[c/a,2]*d-e)*(c*d^2-b*d*e+a*e^2)^(-p-1/2)+e^(-2*p)*(1+Rt[c/a,2]*x^2)*(a+b*x^2+c*x^4)^(-p-1/2))/(d+e*x^2),x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[p+1/2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[(a_+c_.*x_^4)^p_/(d_.+e_.*x_^2),x_Symbol] :=
  -(c*d^2+a*e^2)^(p+1/2)/(e^(2*p)*(Rt[c/a,2]*d-e)) \[Star] 
    Int[(1+Rt[c/a,2]*x^2)/((d+e*x^2)*Sqrt[a+c*x^4]),x] + 
  (c*d^2+a*e^2)^(p+1/2)/(Rt[c/a,2]*d-e) \[Star] Int[(a+c*x^4)^p*
      ExpandToSum[((Rt[c/a,2]*d-e)*(c*d^2+a*e^2)^(-p-1/2)+e^(-2*p)*(1+Rt[c/a,2]*x^2)*(a+c*x^4)^(-p-1/2))/(d+e*x^2),x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[p+1/2,0] && NeQ[c*d^2-a*e^2,0] && PosQ[c/a]


(* ::Code:: *)
Int[(a_+b_.*x_^2+c_.*x_^4)^p_/(d_.+e_.*x_^2),x_Symbol] :=
  (c*d^2-b*d*e+a*e^2)^(p+1/2)/e^(2*p+1) \[Star] 
    Int[1/((d+e*x^2)*Sqrt[a+b*x^2+c*x^4]),x] + 
  (c*d^2-b*d*e+a*e^2)^(p+1/2) \[Star] Int[(a+b*x^2+c*x^4)^p*
      ExpandToSum[((c*d^2-b*d*e+a*e^2)^(-p-1/2)-e^(-2*p-1)*(a+b*x^2+c*x^4)^(-p-1/2))/(d+e*x^2),x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[p+1/2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[(a_+c_.*x_^4)^p_/(d_.+e_.*x_^2),x_Symbol] :=
  (c*d^2+a*e^2)^(p+1/2)/e^(2*p+1) \[Star] 
    Int[1/((d+e*x^2)*Sqrt[a+c*x^4]),x] + 
  (c*d^2+a*e^2)^(p+1/2) \[Star] Int[(a+c*x^4)^p*
      ExpandToSum[((c*d^2+a*e^2)^(-p-1/2)-e^(-2*p-1)*(a+c*x^4)^(-p-1/2))/(d+e*x^2),x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[p+1/2,0] && NeQ[c*d^2-a*e^2,0] && NegQ[c/a]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  -e^2*x*(d+e*x^2)^(q+1)*Sqrt[a+b*x^2+c*x^4]/(2*d*(q+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/(2*d*(q+1)*(c*d^2-b*d*e+a*e^2)) \[Star] Int[(d+e*x^2)^(q+1)/Sqrt[a+b*x^2+c*x^4]*
    Simp[a*e^2*(2*q+3)+2*d*(c*d-b*e)*(q+1)-2*e*(c*d*(q+1)-b*e*(q+2))*x^2+c*e^2*(2*q+5)*x^4,x],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_/Sqrt[a_+c_.*x_^4],x_Symbol] :=
  -e^2*x*(d+e*x^2)^(q+1)*Sqrt[a+c*x^4]/(2*d*(q+1)*(c*d^2+a*e^2)) + 
  1/(2*d*(q+1)*(c*d^2+a*e^2)) \[Star] Int[(d+e*x^2)^(q+1)/Sqrt[a+c*x^4]*
    Simp[a*e^2*(2*q+3)+2*c*d^2*(q+1)-2*e*c*d*(q+1)*x^2+c*e^2*(2*q+5)*x^4,x],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[q,-1]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/(d_+e_.*x_^2)^2,x_Symbol] :=
  With[{q=Rt[e/d,2]},
  c*(d+e*x^2)*Sqrt[(e^2*(a+b*x^2+c*x^4))/(c*(d+e*x^2)^2)]/(2*d*e^2*q*Sqrt[a+b*x^2+c*x^4])*
    EllipticE[2*ArcTan[q*x],(2*c*d-b*e)/(4*c*d)]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && EqQ[c*d^2-a*e^2,0] && PosQ[e/d]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  -x*(d+e*x^2)^(q+1)*Sqrt[a+b*x^2+c*x^4]/(2*d*(q+1)) + 
  1/(2*d*(q+1)) \[Star] Int[(d+e*x^2)^(q+1)*(a*(2*q+3)+2*b*(q+2)*x^2+c*(2*q+5)*x^4)/Sqrt[a+b*x^2+c*x^4],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*Sqrt[a_+c_.*x_^4],x_Symbol] :=
  -x*(d+e*x^2)^(q+1)*Sqrt[a+c*x^4]/(2*d*(q+1)) + 
  1/(2*d*(q+1)) \[Star] Int[(d+e*x^2)^(q+1)*(a*(2*q+3)+c*(2*q+5)*x^4)/Sqrt[a+c*x^4],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[q,-1]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  Module[{aa,bb,cc},
  Int[ReplaceAll[ExpandIntegrand[1/Sqrt[aa+bb*x^2+cc*x^4],(d+e*x^2)^q*(aa+bb*x^2+cc*x^4)^(p+1/2),x],{aa->a,bb->b,cc->c}],x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[q,0] && IntegerQ[p+1/2]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_,x_Symbol] :=
  Module[{aa,cc},
  Int[ReplaceAll[ExpandIntegrand[1/Sqrt[aa+cc*x^4],(d+e*x^2)^q*(aa+cc*x^4)^(p+1/2),x],{aa->a,cc->c}],x]] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[q,0] && IntegerQ[p+1/2]


(* ::Code:: *)
Int[Sqrt[d_+e_.*x_^2]/Sqrt[a_+b_.*x_^2+c_.*x_^4],x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  Sqrt[1+2*c*x^2/(b-q)]*Sqrt[1+2*c*x^2/(b+q)]/Sqrt[a+b*x^2+c*x^4] \[Star] 
    Int[Sqrt[d+e*x^2]/(Sqrt[1+2*c*x^2/(b-q)]*Sqrt[1+2*c*x^2/(b+q)]),x]] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[1/(Sqrt[d_+e_.*x_^2]*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  1/(2*Sqrt[a]*Sqrt[d]*Rt[-e/d,2])*EllipticF[2*ArcSin[Rt[-e/d,2]*x],b*d/(4*a*e)] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d-b*e,0] && GtQ[a,0] && GtQ[d,0]


(* ::Code:: *)
Int[1/(Sqrt[d_+e_.*x_^2]*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  Sqrt[(d+e*x^2)/d]*Sqrt[(a+b*x^2+c*x^4)/a]/(Sqrt[d+e*x^2]*Sqrt[a+b*x^2+c*x^4]) \[Star] 
    Int[1/(Sqrt[1+e/d*x^2]*Sqrt[1+b/a*x^2+c/a*x^4]),x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d-b*e,0] && Not[GtQ[a,0] && GtQ[d,0]]


(* ::Code:: *)
Int[1/(Sqrt[d_+e_.*x_^2]*Sqrt[a_+b_.*x_^2+c_.*x_^4]),x_Symbol] :=
  x^3*Sqrt[e+d/x^2]*Sqrt[c+b/x^2+a/x^4]/(Sqrt[d+e*x^2]*Sqrt[a+b*x^2+c*x^4]) \[Star] 
    Int[1/(x^3*Sqrt[e+d/x^2]*Sqrt[c+b/x^2+a/x^4]),x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[1/(Sqrt[d_+e_.*x_^2]*Sqrt[a_+c_.*x_^4]),x_Symbol] :=
  x^3*Sqrt[e+d/x^2]*Sqrt[c+a/x^4]/(Sqrt[d+e*x^2]*Sqrt[a+c*x^4]) \[Star] 
    Int[1/(x^3*Sqrt[e+d/x^2]*Sqrt[c+a/x^4]),x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/Sqrt[d_+e_.*x_^2],x_Symbol] :=
  Sqrt[a]/(2*Sqrt[d]*Rt[-e/d,2])*EllipticE[2*ArcSin[Rt[-e/d,2]*x],b*d/(4*a*e)] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d-b*e,0] && GtQ[a,0] && GtQ[d,0]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/Sqrt[d_+e_.*x_^2],x_Symbol] :=
  Sqrt[a+b*x^2+c*x^4]*Sqrt[(d+e*x^2)/d]/(Sqrt[d+e*x^2]*Sqrt[(a+b*x^2+c*x^4)/a]) \[Star] 
    Int[Sqrt[1+b/a*x^2+c/a*x^4]/Sqrt[1+e/d*x^2],x] /;
FreeQ[{a,b,c,d,e},x] && EqQ[c*d-b*e,0] && Not[GtQ[a,0] && GtQ[d,0]]


(* ::Code:: *)
Int[Sqrt[a_+b_.*x_^2+c_.*x_^4]/Sqrt[d_+e_.*x_^2],x_Symbol] :=
  Sqrt[e+d/x^2]*Sqrt[a+b*x^2+c*x^4]/(x*Sqrt[d+e*x^2]*Sqrt[c+b/x^2+a/x^4]) \[Star] 
    Int[(x*Sqrt[c+b/x^2+a/x^4])/Sqrt[e+d/x^2],x] /;
FreeQ[{a,b,c,d,e},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[Sqrt[a_+c_.*x_^4]/Sqrt[d_+e_.*x_^2],x_Symbol] :=
  Sqrt[e+d/x^2]*Sqrt[a+c*x^4]/(x*Sqrt[d+e*x^2]*Sqrt[c+a/x^4]) \[Star] 
    Int[(x*Sqrt[c+a/x^4])/Sqrt[e+d/x^2],x] /;
FreeQ[{a,c,d,e},x] && NeQ[c*d^2+a*e^2,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+b_.*x_^2+c_.*x_^4)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)^q*(a+b*x^2+c*x^4)^p,x],x] /;
FreeQ[{a,b,c,d,e,p,q},x] && NeQ[b^2-4*a*c,0] && (IntegerQ[p] && IntegerQ[q] || IGtQ[p,0] || IGtQ[q,0])


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x^2)^q*(a+c*x^4)^p,x],x] /;
FreeQ[{a,c,d,e,p,q},x] && (IntegerQ[p] && IntegerQ[q] || IGtQ[p,0])


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_*(a_+c_.*x_^4)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(a+c*x^4)^p,(d/(d^2-e^2*x^4)-e*x^2/(d^2-e^2*x^4))^(-q),x],x] /;
FreeQ[{a,c,d,e,p},x] && NeQ[c*d^2+a*e^2,0] && Not[IntegerQ[p]] && ILtQ[q,0]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_.*(a_+b_.*x_^2+c_.*x_^4)^p_.,x_Symbol] :=
  Unintegrable[(d+e*x^2)^q*(a+b*x^2+c*x^4)^p,x] /;
FreeQ[{a,b,c,d,e,p,q},x]


(* ::Code:: *)
Int[(d_+e_.*x_^2)^q_.*(a_+c_.*x_^4)^p_.,x_Symbol] :=
  Unintegrable[(d+e*x^2)^q*(a+c*x^4)^p,x] /;
FreeQ[{a,c,d,e,p,q},x]



