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
Int[x_^m_.*(e_+f_.*x_^q_.+g_.*x_^r_.+h_.*x_^n_.)/(a_+c_.*x_^n_.)^(3/2),x_Symbol] :=
  -(2*a*g+4*a*h*x^(n/4)-2*c*f*x^(n/2))/(a*c*n*Sqrt[a+c*x^n]) /;
FreeQ[{a,c,e,f,g,h,m,n},x] && EqQ[q,n/4] && EqQ[r,3*n/4] && EqQ[4*m-n+4,0] && EqQ[c*e+a*h,0]


(* ::Code:: *)
Int[(d_*x_)^m_.*(e_+f_.*x_^q_.+g_.*x_^r_.+h_.*x_^n_.)/(a_+c_.*x_^n_.)^(3/2),x_Symbol] :=
  (d*x)^m/x^m \[Star] Int[x^m*(e+f*x^(n/4)+g*x^((3*n)/4)+h*x^n)/(a+c*x^n)^(3/2),x] /;
FreeQ[{a,c,d,e,f,g,h,m,n},x] && EqQ[4*m-n+4,0] && EqQ[q,n/4] && EqQ[r,3*n/4] && EqQ[c*e+a*h,0]


(* ::Code:: *)
Int[(c_.*x_)^m_*Pq_*(a_+b_.*x_)^p_,x_Symbol] :=
  With[{n=Denominator[p]},
  n/b \[Star] Subst[Int[x^(n*p+n-1)*(-a*c/b+c*x^n/b)^m*ReplaceAll[Pq,x->-a/b+x^n/b],x],x,(a+b*x)^(1/n)]] /;
FreeQ[{a,b,c,m},x] && PolyQ[Pq,x] && FractionQ[p] && ILtQ[m,-1]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_.,x_Symbol] :=
  1/(m+1) \[Star] Subst[Int[SubstFor[x^(m+1),Pq,x]*(a+b*x^Simplify[n/(m+1)])^p,x],x,x^(m+1)] /;
FreeQ[{a,b,m,n,p},x] && NeQ[m,-1] && IGtQ[Simplify[n/(m+1)],0] && PolyQ[Pq,x^(m+1)]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a_+b_.*x_^n_.)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(c*x)^m*Pq*(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,m,n},x] && PolyQ[Pq,x] && (IGtQ[p,0] || EqQ[n,1])


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_.,x_Symbol] :=
  1/n \[Star] Subst[Int[x^(Simplify[(m+1)/n]-1)*SubstFor[x^n,Pq,x]*(a+b*x)^p,x],x,x^n] /;
FreeQ[{a,b,m,n,p},x] && PolyQ[Pq,x^n] && IntegerQ[Simplify[(m+1)/n]]


(* ::Code:: *)
Int[(c_*x_)^m_.*Pq_*(a_+b_.*x_^n_)^p_.,x_Symbol] :=
  c^IntPart[m]*(c*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*Pq*(a+b*x^n)^p,x] /;
FreeQ[{a,b,c,m,n,p},x] && PolyQ[Pq,x^n] && IntegerQ[Simplify[(m+1)/n]]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  Pq*(a+b*x^n)^(p+1)/(b*n*(p+1)) - 
  1/(b*n*(p+1)) \[Star] Int[D[Pq,x]*(a+b*x^n)^(p+1),x] /;
FreeQ[{a,b,m,n},x] && PolyQ[Pq,x] && EqQ[m-n+1,0] && LtQ[p,-1]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_.)^p_,x_Symbol] :=
  Module[{u=IntHide[x^m*Pq,x]},
  u*(a+b*x^n)^p - b*n*p \[Star] Int[x^(m+n)*(a+b*x^n)^(p-1)*ExpandToSum[u/x^(m+1),x],x]] /;
FreeQ[{a,b},x] && PolyQ[Pq,x] && IGtQ[n,0] && GtQ[p,0] && LtQ[m+Expon[Pq,x]+1,0]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a_+b_.*x_^n_.)^p_,x_Symbol] :=
  Module[{q=Expon[Pq,x],i},
  (c*x)^m*(a+b*x^n)^p*Sum[Coeff[Pq,x,i]*x^(i+1)/(m+n*p+i+1),{i,0,q}] + 
  a*n*p \[Star] Int[(c*x)^m*(a+b*x^n)^(p-1)*Sum[Coeff[Pq,x,i]*x^i/(m+n*p+i+1),{i,0,q}],x]] /;
FreeQ[{a,b,c,m},x] && PolyQ[Pq,x] && IGtQ[(n-1)/2,0] && GtQ[p,0]


(* ::Code:: *)
Int[x_^2*P4_/(a_+b_.*x_^4)^(3/2),x_Symbol] :=
  With[{e=Coeff[P4,x,0],f=Coeff[P4,x,1],h=Coeff[P4,x,4]},
  -(f-2*h*x^3)/(2*b*Sqrt[a+b*x^4]) /;
 EqQ[b*e-3*a*h,0]] /;
FreeQ[{a,b},x] && PolyQ[P4,x,4] && EqQ[Coeff[P4,x,2],0] && EqQ[Coeff[P4,x,3],0]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_.)^p_,x_Symbol] :=
  With[{q=m+Expon[Pq,x]},
    Module[{Q=PolynomialQuotient[b^(Floor[(q-1)/n]+1)*x^m*Pq,a+b*x^n,x],
            R=PolynomialRemainder[b^(Floor[(q-1)/n]+1)*x^m*Pq,a+b*x^n,x]},
    -x*R*(a+b*x^n)^(p+1)/(a*n*(p+1)*b^(Floor[(q-1)/n]+1)) + 
    1/(a*n*(p+1)*b^(Floor[(q-1)/n]+1)) \[Star] Int[(a+b*x^n)^(p+1)*ExpandToSum[a*n*(p+1)*Q+n*(p+1)*R+D[x*R,x],x],x]] /;
  GeQ[q,n]] /;
FreeQ[{a,b},x] && PolyQ[Pq,x] && IGtQ[n,0] && LtQ[p,-1] && IGtQ[m,0]


(* ::Code:: *)
Int[x_^m_*Pq_*(a_+b_.*x_^n_.)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x]},
  Module[{Q=PolynomialQuotient[a*b^(Floor[(q-1)/n]+1)*x^m*Pq,a+b*x^n,x],
          R=PolynomialRemainder[a*b^(Floor[(q-1)/n]+1)*x^m*Pq,a+b*x^n,x],i},
    -x*R*(a+b*x^n)^(p+1)/(a^2*n*(p+1)*b^(Floor[(q-1)/n]+1)) + 
    1/(a*n*(p+1)*b^(Floor[(q-1)/n]+1)) \[Star] Int[x^m*(a+b*x^n)^(p+1)*
      ExpandToSum[n*(p+1)*x^(-m)*Q+Sum[(n*(p+1)+i+1)/a*Coeff[R,x,i]*x^(i-m),{i,0,n-1}],x],x]]] /;
FreeQ[{a,b},x] && PolyQ[Pq,x] && IGtQ[n,0] && LtQ[p,-1] && ILtQ[m,0]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{g=GCD[m+1,n]},
  1/g \[Star] Subst[Int[x^((m+1)/g-1)*ReplaceAll[Pq,x->x^(1/g)]*(a+b*x^(n/g))^p,x],x,x^g] /;
 g!=1] /;
FreeQ[{a,b,p},x] && PolyQ[Pq,x^n] && IGtQ[n,0] && IntegerQ[m]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_/(a_+b_.*x_^n_),x_Symbol] :=
  With[{v=Sum[(c*x)^(m+ii)*(Coeff[Pq,x,ii]+Coeff[Pq,x,n/2+ii]*x^(n/2))/(c^ii*(a+b*x^n)),{ii,0,n/2-1}]},
  Int[v,x] /;
 SumQ[v]] /;
FreeQ[{a,b,c,m},x] && PolyQ[Pq,x] && IGtQ[n/2,0] && Expon[Pq,x]<n


(* ::Code:: *)
Int[Pq_/(x_*Sqrt[a_+b_.*x_^n_]),x_Symbol] :=
  Coeff[Pq,x,0] \[Star] Int[1/(x*Sqrt[a+b*x^n]),x] + 
  Int[ExpandToSum[(Pq-Coeff[Pq,x,0])/x,x]/Sqrt[a+b*x^n],x] /;
FreeQ[{a,b},x] && PolyQ[Pq,x] && IGtQ[n,0] && NeQ[Coeff[Pq,x,0],0]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  Module[{q=Expon[Pq,x],j,k},
  Int[Sum[(c*x)^(m+j)/c^j*Sum[Coeff[Pq,x,j+k*n/2]*x^(k*n/2),{k,0,2*(q-j)/n+1}]*(a+b*x^n)^p,{j,0,n/2-1}],x]] /;
FreeQ[{a,b,c,m,p},x] && PolyQ[Pq,x] && IGtQ[n/2,0] && Not[PolyQ[Pq,x^(n/2)]]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_/(a_+b_.*x_^n_),x_Symbol] :=
  Int[ExpandIntegrand[(c*x)^m*Pq/(a+b*x^n),x],x] /;
FreeQ[{a,b,c,m},x] && PolyQ[Pq,x] && IntegerQ[n] && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[(c_.*x_)^m_*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{Pq0=Coeff[Pq,x,0]},
    Pq0*(c*x)^(m+1)*(a+b*x^n)^(p+1)/(a*c*(m+1)) + 
    1/(2*a*c*(m+1)) \[Star] Int[(c*x)^(m+1)*ExpandToSum[2*a*(m+1)*(Pq-Pq0)/x-2*b*Pq0*(m+n*(p+1)+1)*x^(n-1),x]*(a+b*x^n)^p,x] /;
 NeQ[Pq0,0]] /;
FreeQ[{a,b,c,p},x] && PolyQ[Pq,x] && IGtQ[n,0] && LtQ[m,-1] && LeQ[n-1,Expon[Pq,x]]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x]},
    With[{Pqq=Coeff[Pq,x,q]},
    Pqq*(c*x)^(m+q-n+1)*(a+b*x^n)^(p+1)/(b*c^(q-n+1)*(m+q+n*p+1)) + 
    1/(b*(m+q+n*p+1)) \[Star] Int[(c*x)^m*ExpandToSum[b*(m+q+n*p+1)*(Pq-Pqq*x^q)-a*Pqq*(m+q-n+1)*x^(q-n),x]*(a+b*x^n)^p,x]] /;
  NeQ[m+q+n*p+1,0] && q-n>=0 && (IntegerQ[2*p] || IntegerQ[p+(q+1)/(2*n)])] /;
FreeQ[{a,b,c,m,p},x] && PolyQ[Pq,x] && IGtQ[n,0]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x]},
  -Subst[Int[ExpandToSum[x^q*ReplaceAll[Pq,x->x^(-1)],x]*(a+b*x^(-n))^p/x^(m+q+2),x],x,1/x]] /;
FreeQ[{a,b,p},x] && PolyQ[Pq,x] && ILtQ[n,0] && IntegerQ[m]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{g=Denominator[m],q=Expon[Pq,x]},
  -g/c \[Star] Subst[Int[ExpandToSum[x^(g*q)*ReplaceAll[Pq,x->c^(-1)*x^(-g)],x]*
    (a+b*c^(-n)*x^(-g*n))^p/x^(g*(m+q+1)+1),x],x,1/(c*x)^(1/g)]] /;
FreeQ[{a,b,c,p},x] && PolyQ[Pq,x] && ILtQ[n,0] && FractionQ[m]


(* ::Code:: *)
Int[(c_.*x_)^m_*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{q=Expon[Pq,x]},
  -(c*x)^m*(x^(-1))^m \[Star] Subst[Int[ExpandToSum[x^q*ReplaceAll[Pq,x->x^(-1)],x]*(a+b*x^(-n))^p/x^(m+q+2),x],x,1/x]] /;
FreeQ[{a,b,c,m,p},x] && PolyQ[Pq,x] && ILtQ[n,0] && Not[RationalQ[m]]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  With[{g=Denominator[n]},
  g \[Star] Subst[Int[x^(g*(m+1)-1)*ReplaceAll[Pq,x->x^g]*(a+b*x^(g*n))^p,x],x,x^(1/g)]] /;
FreeQ[{a,b,m,p},x] && PolyQ[Pq,x] && FractionQ[n]


(* ::Code:: *)
Int[(c_*x_)^m_*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  c^IntPart[m]*(c*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*Pq*(a+b*x^n)^p,x] /;
FreeQ[{a,b,c,m,p},x] && PolyQ[Pq,x] && FractionQ[n]


(* ::Code:: *)
Int[x_^m_.*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  1/(m+1) \[Star] Subst[Int[ReplaceAll[SubstFor[x^n,Pq,x],x->x^Simplify[n/(m+1)]]*(a+b*x^Simplify[n/(m+1)])^p,x],x,x^(m+1)] /;
FreeQ[{a,b,m,n,p},x] && PolyQ[Pq,x^n] && IntegerQ[Simplify[n/(m+1)]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(c_*x_)^m_*Pq_*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  c^IntPart[m]*(c*x)^FracPart[m]/x^FracPart[m] \[Star] Int[x^m*Pq*(a+b*x^n)^p,x] /;
FreeQ[{a,b,c,m,n,p},x] && PolyQ[Pq,x^n] && IntegerQ[Simplify[n/(m+1)]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a_+b_.*x_^n_)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(c*x)^m*Pq*(a+b*x^n)^p,x],x] /;
FreeQ[{a,b,c,m,n,p},x] && (PolyQ[Pq,x] || PolyQ[Pq,x^n]) && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[u_^m_.*Pq_*(a_+b_.*v_^n_.)^p_,x_Symbol] :=
  u^m/(Coeff[v,x,1]*v^m) \[Star] Subst[Int[x^m*SubstFor[v,Pq,x]*(a+b*x^n)^p,x],x,v] /;
FreeQ[{a,b,m,n,p},x] && LinearPairQ[u,v,x] && PolyQ[Pq,v^n]


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a1_+b1_.*x_^n_.)^p_.*(a2_+b2_.*x_^n_.)^p_.,x_Symbol] :=
  Int[(c*x)^m*Pq*(a1*a2+b1*b2*x^(2*n))^p,x] /;
FreeQ[{a1,b1,a2,b2,c,m,n,p},x] && PolyQ[Pq,x] && EqQ[a2*b1+a1*b2,0] && (IntegerQ[p] || GtQ[a1,0] && GtQ[a2,0])


(* ::Code:: *)
Int[(c_.*x_)^m_.*Pq_*(a1_+b1_.*x_^n_.)^p_.*(a2_+b2_.*x_^n_.)^p_.,x_Symbol] :=
  (a1+b1*x^n)^FracPart[p]*(a2+b2*x^n)^FracPart[p]/(a1*a2+b1*b2*x^(2*n))^FracPart[p] \[Star] 
    Int[(c*x)^m*Pq*(a1*a2+b1*b2*x^(2*n))^p,x] /;
FreeQ[{a1,b1,a2,b2,c,m,n,p},x] && PolyQ[Pq,x] && EqQ[a2*b1+a1*b2,0] && Not[EqQ[n,1] && LinearQ[Pq,x]]


(* ::Code:: *)
Int[(h_.*x_)^m_.*(e_+f_.*x_^n_.+g_.*x_^n2_.)*(a_+b_.*x_^n_.)^p_.*(c_+d_.*x_^n_.)^p_.,x_Symbol] :=
  e*(h*x)^(m+1)*(a+b*x^n)^(p+1)*(c+d*x^n)^(p+1)/(a*c*h*(m+1)) /;
FreeQ[{a,b,c,d,e,f,g,h,m,n,p},x] && EqQ[n2,2*n] && EqQ[a*c*f*(m+1)-e*(b*c+a*d)*(m+n*(p+1)+1),0] && 
  EqQ[a*c*g*(m+1)-b*d*e*(m+2*n*(p+1)+1),0] && NeQ[m,-1]


(* ::Code:: *)
Int[(h_.*x_)^m_.*(e_+g_.*x_^n2_.)*(a_+b_.*x_^n_.)^p_.*(c_+d_.*x_^n_.)^p_.,x_Symbol] :=
  e*(h*x)^(m+1)*(a+b*x^n)^(p+1)*(c+d*x^n)^(p+1)/(a*c*h*(m+1)) /;
FreeQ[{a,b,c,d,e,g,h,m,n,p},x] && EqQ[n2,2*n] && EqQ[m+n*(p+1)+1,0] && EqQ[a*c*g*(m+1)-b*d*e*(m+2*n*(p+1)+1),0] && 
  NeQ[m,-1]



