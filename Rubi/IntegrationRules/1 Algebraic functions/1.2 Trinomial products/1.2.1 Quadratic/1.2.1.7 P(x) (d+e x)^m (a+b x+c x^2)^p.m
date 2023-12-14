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
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+1)*PolynomialQuotient[Pq,d+e*x,x]*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && EqQ[PolynomialRemainder[Pq,d+e*x,x],0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+1)*PolynomialQuotient[Pq,d+e*x,x]*(a+c*x^2)^p,x] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[Pq,x] && EqQ[PolynomialRemainder[Pq,d+e*x,x],0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*P2_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  With[{f=Coeff[P2,x,0],g=Coeff[P2,x,1],h=Coeff[P2,x,2]},
  h*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(c*e*(m+2*p+3)) /;
 EqQ[b*e*h*(m+p+2)+2*c*d*h*(p+1)-c*e*g*(m+2*p+3),0] && EqQ[b*d*h*(p+1)+a*e*h*(m+1)-c*e*f*(m+2*p+3),0]] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[P2,x,2] && NeQ[m+2*p+3,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*P2_*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  With[{f=Coeff[P2,x,0],g=Coeff[P2,x,1],h=Coeff[P2,x,2]},
  h*(d+e*x)^(m+1)*(a+c*x^2)^(p+1)/(c*e*(m+2*p+3)) /;
 EqQ[2*d*h*(p+1)-e*g*(m+2*p+3),0] && EqQ[a*h*(m+1)-c*f*(m+2*p+3),0]] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[P2,x,2] && NeQ[m+2*p+3,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*Pq*(a+b*x+c*x^2)^p,x],x] /;
FreeQ[{a,b,c,d,e,m},x] && PolyQ[Pq,x] && IGtQ[p,-2]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*Pq*(a+c*x^2)^p,x],x] /;
FreeQ[{a,c,d,e,m},x] && PolyQ[Pq,x] && IGtQ[p,-2]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (a+b*x+c*x^2)^FracPart[p]/((4*c)^IntPart[p]*(b+2*c*x)^(2*FracPart[p])) \[Star] Int[(d+e*x)^m*Pq*(b+2*c*x)^(2*p),x] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && EqQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(e_.*x_)^m_.*Pq_*(b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  e \[Star] Int[(e*x)^(m-1)*PolynomialQuotient[Pq,b+c*x,x]*(b*x+c*x^2)^(p+1),x] /;
FreeQ[{b,c,e,m,p},x] && PolyQ[Pq,x] && EqQ[PolynomialRemainder[Pq,b+c*x,x],0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  d*e \[Star] Int[(d+e*x)^(m-1)*PolynomialQuotient[Pq,a*e+c*d*x,x]*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && EqQ[PolynomialRemainder[Pq,a*e+c*d*x,x],0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  d*e \[Star] Int[(d+e*x)^(m-1)*PolynomialQuotient[Pq,a*e+c*d*x,x]*(a+c*x^2)^(p+1),x] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[Pq,x] && EqQ[c*d^2+a*e^2,0] && EqQ[PolynomialRemainder[Pq,a*e+c*d*x,x],0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,a*e+c*d*x,x], R=PolynomialRemainder[Pq,a*e+c*d*x,x]},
  R*(2*c*d-b*e)*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(e*(p+1)*(b^2-4*a*c)) + 
  1/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)*
    ExpandToSum[d*e*(p+1)*(b^2-4*a*c)*Qx-R*(2*c*d-b*e)*(m+2*p+2),x],x]] /;
FreeQ[{a,b,c,d,e},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[p+1/2,0] && GtQ[m,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,a*e+c*d*x,x], R=PolynomialRemainder[Pq,a*e+c*d*x,x]},
  -d*R*(d+e*x)^m*(a+c*x^2)^(p+1)/(2*a*e*(p+1)) + 
  d/(2*a*(p+1)) \[Star] Int[(d+e*x)^(m-1)*(a+c*x^2)^(p+1)*ExpandToSum[2*a*e*(p+1)*Qx+R*(m+2*p+2),x],x]] /;
FreeQ[{a,c,d,e},x] && PolyQ[Pq,x] && EqQ[c*d^2+a*e^2,0] && ILtQ[p+1/2,0] && GtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(a+b*x+c*x^2)^p,(d+e*x)^m*Pq,x],x] /;
FreeQ[{a,b,c,d,e},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && EqQ[m+Expon[Pq,x]+2*p+1,0] && ILtQ[m,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  Int[ExpandIntegrand[(a+c*x^2)^p,(d+e*x)^m*Pq,x],x] /;
FreeQ[{a,c,d,e},x] && PolyQ[Pq,x] && EqQ[c*d^2+a*e^2,0] && EqQ[m+Expon[Pq,x]+2*p+1,0] && ILtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x],f=Coeff[Pq,x,Expon[Pq,x]]},
  f*(d+e*x)^(m+q-1)*(a+b*x+c*x^2)^(p+1)/(c*e^(q-1)*(m+q+2*p+1)) + 
  1/(c*e^q*(m+q+2*p+1)) \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^p*
    ExpandToSum[c*e^q*(m+q+2*p+1)*Pq-c*f*(m+q+2*p+1)*(d+e*x)^q+e*f*(m+p+q)*(d+e*x)^(q-2)*(b*d-2*a*e+(2*c*d-b*e)*x),x],x] /;
 NeQ[m+q+2*p+1,0]] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x],f=Coeff[Pq,x,Expon[Pq,x]]},
  f*(d+e*x)^(m+q-1)*(a+c*x^2)^(p+1)/(c*e^(q-1)*(m+q+2*p+1)) + 
  1/(c*e^q*(m+q+2*p+1)) \[Star] Int[(d+e*x)^m*(a+c*x^2)^p*
    ExpandToSum[c*e^q*(m+q+2*p+1)*Pq-c*f*(m+q+2*p+1)*(d+e*x)^q-2*e*f*(m+p+q)*(d+e*x)^(q-2)*(a*e-c*d*x),x],x] /;
 NeQ[m+q+2*p+1,0]] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[Pq,x] && EqQ[c*d^2+a*e^2,0] && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+p)*(a/d+c/e*x)^p*Pq,x] /;
FreeQ[{a,b,c,d,e,m},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+p)*(a/d+c/e*x)^p*Pq,x] /;
FreeQ[{a,c,d,e,m},x] && PolyQ[Pq,x] && EqQ[c*d^2+a*e^2,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (a+b*x+c*x^2)^FracPart[p]/((d+e*x)^FracPart[p]*(a/d+(c*x)/e)^FracPart[p]) \[Star] Int[(d+e*x)^(m+p)*(a/d+c/e*x)^p*Pq,x] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[p]] && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (a+c*x^2)^FracPart[p]/((d+e*x)^FracPart[p]*(a/d+(c*x)/e)^FracPart[p]) \[Star] Int[(d+e*x)^(m+p)*(a/d+c/e*x)^p*Pq,x] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[Pq,x] && EqQ[c*d^2+a*e^2,0] && Not[IntegerQ[p]] && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,a+b*x+c*x^2,x],
        R=Coeff[PolynomialRemainder[Pq,a+b*x+c*x^2,x],x,0],
        S=Coeff[PolynomialRemainder[Pq,a+b*x+c*x^2,x],x,1]},
  (d+e*x)^m*(a+b*x+c*x^2)^(p+1)*(R*b-2*a*S+(2*c*R-b*S)*x)/((p+1)*(b^2-4*a*c)) + 
  1/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)*
    ExpandToSum[(p+1)*(b^2-4*a*c)*(d+e*x)*Qx+S*(2*a*e*m+b*d*(2*p+3))-R*(b*e*m+2*c*d*(2*p+3))-e*(2*c*R-b*S)*(m+2*p+3)*x,x],x]] /;
FreeQ[{a,b,c,d,e},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && GtQ[m,0] && 
  (IntegerQ[p] || Not[IntegerQ[m]] || Not[RationalQ[a,b,c,d,e]]) && 
  Not[IGtQ[m,0] && RationalQ[a,b,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,a+c*x^2,x],
        R=Coeff[PolynomialRemainder[Pq,a+c*x^2,x],x,0],
        S=Coeff[PolynomialRemainder[Pq,a+c*x^2,x],x,1]},
  (d+e*x)^m*(a+c*x^2)^(p+1)*(a*S-c*R*x)/(2*a*c*(p+1)) + 
  1/(2*a*c*(p+1)) \[Star] Int[(d+e*x)^(m-1)*(a+c*x^2)^(p+1)*
    ExpandToSum[2*a*c*(p+1)*(d+e*x)*Qx-a*e*S*m+c*d*R*(2*p+3)+c*e*R*(m+2*p+3)*x,x],x]] /;
FreeQ[{a,c,d,e},x] && PolyQ[Pq,x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && GtQ[m,0] && 
  Not[IGtQ[m,0] && RationalQ[a,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[(d+e*x)^m*Pq,a+b*x+c*x^2,x],
        R=Coeff[PolynomialRemainder[(d+e*x)^m*Pq,a+b*x+c*x^2,x],x,0],
        S=Coeff[PolynomialRemainder[(d+e*x)^m*Pq,a+b*x+c*x^2,x],x,1]},
  (b*R-2*a*S+(2*c*R-b*S)*x)*(a+b*x+c*x^2)^(p+1)/((p+1)*(b^2-4*a*c)) + 
  1/((p+1)*(b^2-4*a*c)) \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^(p+1)*
    ExpandToSum[(p+1)*(b^2-4*a*c)*(d+e*x)^(-m)*Qx-(2*p+3)*(2*c*R-b*S)*(d+e*x)^(-m),x],x]] /;
FreeQ[{a,b,c,d,e},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && ILtQ[m,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[(d+e*x)^m*Pq,a+c*x^2,x],
        R=Coeff[PolynomialRemainder[(d+e*x)^m*Pq,a+c*x^2,x],x,0],
        S=Coeff[PolynomialRemainder[(d+e*x)^m*Pq,a+c*x^2,x],x,1]},
  (a*S-c*R*x)*(a+c*x^2)^(p+1)/(2*a*c*(p+1)) + 
  1/(2*a*c*(p+1)) \[Star] Int[(d+e*x)^m*(a+c*x^2)^(p+1)*
    ExpandToSum[2*a*c*(p+1)*(d+e*x)^(-m)*Qx+c*R*(2*p+3)*(d+e*x)^(-m),x],x]] /;
FreeQ[{a,c,d,e},x] && PolyQ[Pq,x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && ILtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,a+b*x+c*x^2,x],
        R=Coeff[PolynomialRemainder[Pq,a+b*x+c*x^2,x],x,0],
        S=Coeff[PolynomialRemainder[Pq,a+b*x+c*x^2,x],x,1]},
  (d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)*(R*(b*c*d-b^2*e+2*a*c*e)-a*S*(2*c*d-b*e)+c*(R*(2*c*d-b*e)-S*(b*d-2*a*e))*x)/
    ((p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)) + 
  1/((p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)) \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^(p+1)*
   ExpandToSum[(p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)*Qx+
      R*(b*c*d*e*(2*p-m+2)+b^2*e^2*(p+m+2)-2*c^2*d^2*(2*p+3)-2*a*c*e^2*(m+2*p+3))-
      S*(a*e*(b*e-2*c*d*m+b*e*m)-b*d*(3*c*d-b*e+2*c*d*p-b*e*p))+
      c*e*(S*(b*d-2*a*e)-R*(2*c*d-b*e))*(m+2*p+4)*x,x],x]] /;
FreeQ[{a,b,c,d,e,m},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && 
  Not[IGtQ[m,0] && RationalQ[a,b,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,a+c*x^2,x],
        R=Coeff[PolynomialRemainder[Pq,a+c*x^2,x],x,0],
        S=Coeff[PolynomialRemainder[Pq,a+c*x^2,x],x,1]},
  -(d+e*x)^(m+1)*(a+c*x^2)^(p+1)*(a*(e*R-d*S)+(c*d*R+a*e*S)*x)/(2*a*(p+1)*(c*d^2+a*e^2)) + 
  1/(2*a*(p+1)*(c*d^2+a*e^2)) \[Star] Int[(d+e*x)^m*(a+c*x^2)^(p+1)*
   ExpandToSum[2*a*(p+1)*(c*d^2+a*e^2)*Qx+c*d^2*R*(2*p+3)-a*e*(d*S*m-e*R*(m+2*p+3))+e*(c*d*R+a*e*S)*(m+2*p+4)*x,x],x]] /;
FreeQ[{a,c,d,e,m},x] && PolyQ[Pq,x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && 
  Not[IGtQ[m,0] && RationalQ[a,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,d+e*x,x], R=PolynomialRemainder[Pq,d+e*x,x]},
  (e*R*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1))/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/((m+1)*(c*d^2-b*d*e+a*e^2)) \[Star] Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p*
     ExpandToSum[(m+1)*(c*d^2-b*d*e+a*e^2)*Qx+c*d*R*(m+1)-b*e*R*(m+p+2)-c*e*R*(m+2*p+3)*x,x],x]] /;
FreeQ[{a,b,c,d,e,p},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[m,-1]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{Qx=PolynomialQuotient[Pq,d+e*x,x], R=PolynomialRemainder[Pq,d+e*x,x]},
  (e*R*(d+e*x)^(m+1)*(a+c*x^2)^(p+1))/((m+1)*(c*d^2+a*e^2)) + 
  1/((m+1)*(c*d^2+a*e^2)) \[Star] Int[(d+e*x)^(m+1)*(a+c*x^2)^p*
     ExpandToSum[(m+1)*(c*d^2+a*e^2)*Qx+c*d*R*(m+1)-c*e*R*(m+2*p+3)*x,x],x]] /;
FreeQ[{a,c,d,e,p},x] && PolyQ[Pq,x] && NeQ[c*d^2+a*e^2,0] && LtQ[m,-1]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^2)^p_,x_Symbol] :=
  Module[{q=Expon[Pq,x],k},
  Int[x^m*Sum[Coeff[Pq,x,2*k]*x^(2*k),{k,0,q/2}]*(a+b*x^2)^p,x] + 
  Int[x^(m+1)*Sum[Coeff[Pq,x,2*k+1]*x^(2*k),{k,0,(q-1)/2}]*(a+b*x^2)^p,x]] /;
FreeQ[{a,b,p},x] && PolyQ[Pq,x] && Not[PolyQ[Pq,x^2]] && IGtQ[m,-2] && Not[IntegerQ[2*p]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x],f=Coeff[Pq,x,Expon[Pq,x]]},
  f*(d+e*x)^(m+q-1)*(a+b*x+c*x^2)^(p+1)/(c*e^(q-1)*(m+q+2*p+1)) + 
  1/(c*e^q*(m+q+2*p+1)) \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^p*ExpandToSum[c*e^q*(m+q+2*p+1)*Pq-c*f*(m+q+2*p+1)*(d+e*x)^q-
    f*(d+e*x)^(q-2)*(b*d*e*(p+1)+a*e^2*(m+q-1)-c*d^2*(m+q+2*p+1)-e*(2*c*d-b*e)*(m+q+p)*x),x],x] /;
 GtQ[q,1] && NeQ[m+q+2*p+1,0]] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && 
  Not[IGtQ[m,0] && RationalQ[a,b,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x],f=Coeff[Pq,x,Expon[Pq,x]]},
  f*(d+e*x)^(m+q-1)*(a+c*x^2)^(p+1)/(c*e^(q-1)*(m+q+2*p+1)) + 
  1/(c*e^q*(m+q+2*p+1)) \[Star] Int[(d+e*x)^m*(a+c*x^2)^p*ExpandToSum[c*e^q*(m+q+2*p+1)*Pq-c*f*(m+q+2*p+1)*(d+e*x)^q-
    f*(d+e*x)^(q-2)*(a*e^2*(m+q-1)-c*d^2*(m+q+2*p+1)-2*c*d*e*(m+q+p)*x),x],x] /;
 GtQ[q,1] && NeQ[m+q+2*p+1,0]] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[c*d^2+a*e^2,0] && Not[EqQ[d,0] && True] && 
  Not[IGtQ[m,0] && RationalQ[a,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*Pq_*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  With[{q=Expon[Pq,x]},
  Coeff[Pq,x,q]/e^q \[Star] Int[(d+e*x)^(m+q)*(a+b*x+c*x^2)^p,x] + 
  1/e^q \[Star] Int[(d+e*x)^m*(a+b*x+c*x^2)^p*ExpandToSum[e^q*Pq-Coeff[Pq,x,q]*(d+e*x)^q,x],x]] /;
FreeQ[{a,b,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && 
  Not[IGtQ[m,0] && RationalQ[a,b,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_.*Pq_*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  With[{q=Expon[Pq,x]},
  Coeff[Pq,x,q]/e^q \[Star] Int[(d+e*x)^(m+q)*(a+c*x^2)^p,x] + 
  1/e^q \[Star] Int[(d+e*x)^m*(a+c*x^2)^p*ExpandToSum[e^q*Pq-Coeff[Pq,x,q]*(d+e*x)^q,x],x]] /;
FreeQ[{a,c,d,e,m,p},x] && PolyQ[Pq,x] && NeQ[c*d^2+a*e^2,0] && 
  Not[IGtQ[m,0] && RationalQ[a,c,d,e] && (IntegerQ[p] || ILtQ[p+1/2,0])]



