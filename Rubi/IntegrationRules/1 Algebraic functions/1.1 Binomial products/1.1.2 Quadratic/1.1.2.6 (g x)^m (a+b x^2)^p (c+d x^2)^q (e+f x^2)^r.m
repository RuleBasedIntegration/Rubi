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
Int[x_^m_.*(a_.+b_.*x_^2)^p_.*(c_.+d_.*x_^2)^q_.*(e_.+f_.*x_^2)^r_.,x_Symbol] :=
  1/2 \[Star] Subst[Int[x^((m-1)/2)*(a+b*x)^p*(c+d*x)^q*(e+f*x)^r,x],x,x^2] /;
FreeQ[{a,b,c,d,e,f,p,q,r},x] && IntegerQ[(m-1)/2]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(b_.*x_^2.)^p_.*(c_.+d_.*x_^2)^q_.*(e_.+f_.*x_^2)^r_.,x_Symbol] :=
  (g*x)^m*(b*x^2)^p/x^(m+2*p) \[Star] Int[x^(m+2*p)*(c+d*x^2)^q*(e+f*x^2)^r,x] /;
FreeQ[{b,c,d,e,f,g,m,p,q,r},x]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2)^r_.,x_Symbol] :=
  Int[ExpandIntegrand[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^q*(e+f*x^2)^r,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && IGtQ[p,-2] && IGtQ[q,0] && IGtQ[r,0]


(* ::Code:: *)
Int[(g_.*x_)^m_*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_*(e_+f_.*x_^2)^r_,x_Symbol] :=
  With[{k=Denominator[m]},
  k/g \[Star] Subst[Int[x^(k*(m+1)-1)*(a+b*x^(k*2)/g^2)^p*(c+d*x^(k*2)/g^2)^q*(e+f*x^(k*2)/g^2)^r,x],x,(g*x)^(1/k)]] /;
FreeQ[{a,b,c,d,e,f,g,p,q,r},x] && FractionQ[m]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  -(b*e-a*f)*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^q/(2*a*b*g*(p+1)) + 
  1/(2*a*b*(p+1)) \[Star] Int[(g*x)^m*(a+b*x^2)^(p+1)*(c+d*x^2)^(q-1)*
    Simp[c*(2*b*e*(p+1)+(b*e-a*f)*(m+1))+d*(2*b*e*(p+1)+(b*e-a*f)*(m+2*q+1))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && LtQ[p,-1] && GtQ[q,0] && Not[EqQ[q,1] && SimplerQ[b*c-a*d,b*e-a*f]]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_*(e_+f_.*x_^2),x_Symbol] :=
  g*(b*e-a*f)*(g*x)^(m-1)*(a+b*x^2)^(p+1)*(c+d*x^2)^(q+1)/(2*b*(b*c-a*d)*(p+1)) - 
  g^2/(2*b*(b*c-a*d)*(p+1)) \[Star] Int[(g*x)^(m-2)*(a+b*x^2)^(p+1)*(c+d*x^2)^q*
    Simp[c*(b*e-a*f)*(m-1)+(d*(b*e-a*f)*(m+2*q+1)-b*2*(c*f-d*e)*(p+1))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,q},x] && LtQ[p,-1] && GtQ[m,1]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_*(e_+f_.*x_^2),x_Symbol] :=
  -(b*e-a*f)*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^(q+1)/(a*g*2*(b*c-a*d)*(p+1)) + 
  1/(a*2*(b*c-a*d)*(p+1)) \[Star] Int[(g*x)^m*(a+b*x^2)^(p+1)*(c+d*x^2)^q*
    Simp[c*(b*e-a*f)*(m+1)+e*2*(b*c-a*d)*(p+1)+d*(b*e-a*f)*(m+2*(p+q+2)+1)*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,q},x] && LtQ[p,-1]


(* ::Code:: *)
Int[(g_.*x_)^m_*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  e*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^q/(a*g*(m+1)) - 
  1/(a*g^2*(m+1)) \[Star] Int[(g*x)^(m+2)*(a+b*x^2)^p*(c+d*x^2)^(q-1)*
    Simp[c*(b*e-a*f)*(m+1)+e*2*(b*c*(p+1)+a*d*q)+d*((b*e-a*f)*(m+1)+b*e*2*(p+q+1))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,p},x] && GtQ[q,0] && LtQ[m,-1] && Not[EqQ[q,1] && SimplerQ[e+f*x^2,c+d*x^2]]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  f*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^q/(b*g*(m+2*(p+q+1)+1)) + 
  1/(b*(m+2*(p+q+1)+1)) \[Star] Int[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^(q-1)*
    Simp[c*((b*e-a*f)*(m+1)+b*e*2*(p+q+1))+(d*(b*e-a*f)*(m+1)+f*2*q*(b*c-a*d)+b*e*d*2*(p+q+1))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && GtQ[q,0] && Not[EqQ[q,1] && SimplerQ[e+f*x^2,c+d*x^2]]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  f*g*(g*x)^(m-1)*(a+b*x^2)^(p+1)*(c+d*x^2)^(q+1)/(b*d*(m+2*(p+q+1)+1)) - 
  g^2/(b*d*(m+2*(p+q+1)+1)) \[Star] Int[(g*x)^(m-2)*(a+b*x^2)^p*(c+d*x^2)^q*
    Simp[a*f*c*(m-1)+(a*f*d*(m+2*q+1)+b*(f*c*(m+2*p+1)-e*d*(m+2*(p+q+1)+1)))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,p,q},x] && GtQ[m,1]


(* ::Code:: *)
Int[(g_.*x_)^m_*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  e*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^(q+1)/(a*c*g*(m+1)) + 
  1/(a*c*g^2*(m+1)) \[Star] Int[(g*x)^(m+2)*(a+b*x^2)^p*(c+d*x^2)^q*
    Simp[a*f*c*(m+1)-e*(b*c+a*d)*(m+2+1)-e*2*(b*c*p+a*d*q)-b*e*d*(m+2*(p+q+2)+1)*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,p,q},x] && LtQ[m,-1]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(e_+f_.*x_^2)/(c_+d_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(g*x)^m*(a+b*x^2)^p*(e+f*x^2)/(c+d*x^2),x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  e \[Star] Int[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^q,x] + 
  f/e^2 \[Star] Int[(g*x)^(m+2)*(a+b*x^2)^p*(c+d*x^2)^q,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p,q},x]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2)^r_.,x_Symbol] :=
  e \[Star] Int[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^q*(e+f*x^2)^(r-1),x] + 
  f/e^2 \[Star] Int[(g*x)^(m+2)*(a+b*x^2)^p*(c+d*x^2)^q*(e+f*x^2)^(r-1),x] /;
FreeQ[{a,b,c,d,e,f,g,m,p,q},x] && IGtQ[r,0]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  -(b*e-a*f)*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^q/(2*a*b*g*(p+1)) + 
  1/(2*a*b*(p+1)) \[Star] Int[(g*x)^m*(a+b*x^2)^(p+1)*(c+d*x^2)^(q-1)*
    Simp[c*(2*b*e*(p+1)+(b*e-a*f)*(m+1))+d*(2*b*e*(p+1)+(b*e-a*f)*(m+2*q+1))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && LtQ[p,-1] && GtQ[q,0] && Not[EqQ[q,1] && SimplerQ[b*c-a*d,b*e-a*f]]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_*(e_+f_.*x_^2),x_Symbol] :=
  -(b*e-a*f)*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^(q+1)/(a*g*2*(b*c-a*d)*(p+1)) + 
  1/(a*2*(b*c-a*d)*(p+1)) \[Star] Int[(g*x)^m*(a+b*x^2)^(p+1)*(c+d*x^2)^q*
    Simp[c*(b*e-a*f)*(m+1)+e*2*(b*c-a*d)*(p+1)+d*(b*e-a*f)*(m+2*(p+q+2)+1)*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,q},x] && LtQ[p,-1]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_.*(c_+d_.*x_^2)^q_.*(e_+f_.*x_^2),x_Symbol] :=
  f*(g*x)^(m+1)*(a+b*x^2)^(p+1)*(c+d*x^2)^q/(b*g*(m+2*(p+q+1)+1)) + 
  1/(b*(m+2*(p+q+1)+1)) \[Star] Int[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^(q-1)*
    Simp[c*((b*e-a*f)*(m+1)+b*e*2*(p+q+1))+(d*(b*e-a*f)*(m+1)+f*2*q*(b*c-a*d)+b*e*d*2*(p+q+1))*x^2,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && GtQ[q,0] && Not[EqQ[q,1] && SimplerQ[e+f*x^2,c+d*x^2]]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(e_+f_.*x_^2)/(c_+d_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(g*x)^m*(a+b*x^2)^p*(e+f*x^2)/(c+d*x^2),x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_+b_.*x_^2)^p_*(c_+d_.*x_^2)^q_*(e_+f_.*x_^2),x_Symbol] :=
  e \[Star] Int[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^q,x] + 
  f*(g*x)^m/x^m \[Star] Int[x^(m+2)*(a+b*x^2)^p*(c+d*x^2)^q,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p,q},x]


(* ::Code:: *)
Int[(g_.*x_)^m_.*(a_.+b_.*x_^2)^p_.*(c_.+d_.*x_^2)^q_.*(e_.+f_.*x_^2)^r_.,x_Symbol] :=
  Unintegrable[(g*x)^m*(a+b*x^2)^p*(c+d*x^2)^q*(e+f*x^2)^r,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p,q,r},x]



