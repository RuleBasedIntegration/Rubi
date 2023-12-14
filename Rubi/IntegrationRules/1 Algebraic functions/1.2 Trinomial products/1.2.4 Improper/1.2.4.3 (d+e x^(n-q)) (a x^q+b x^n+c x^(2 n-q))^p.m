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
Int[(A_+B_.*x_^r_.)*(a_.*x_^q_.+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[x^(p*q)*(A+B*x^(n-q))*(a+b*x^(n-q)+c*x^(2*(n-q)))^p,x] /;
FreeQ[{a,b,c,A,B,n,q},x] && EqQ[r,n-q] && EqQ[j,2*n-q] && IntegerQ[p] && PosQ[n-q]


(* ::Code:: *)
(* Int[(A_+B_.*x_^j_.)*(a_.*x_^q_.+b_.*x_^n_.+c_.*x_^r_.)^p_,x_Symbol] :=
  Sqrt[a*x^q+b*x^n+c*x^(2*n-q)]/(x^(q/2)*Sqrt[a+b*x^(n-q)+c*x^(2*(n-q))]) \[Star] 
    Int[x^(q*p)*(A+B*x^(n-q))*(a+b*x^(n-q)+c*x^(2*(n-q)))^p,x] /;
FreeQ[{a,b,c,A,B,n,p,q},x] && EqQ[j,n-q] && EqQ[r,2*n-q] && PosQ[n-q] && IGtQ[p+1/2,0] *)


(* ::Code:: *)
(* Int[(A_+B_.*x_^j_.)*(a_.*x_^q_.+b_.*x_^n_.+c_.*x_^r_.)^p_,x_Symbol] :=
  x^(q/2)*Sqrt[a+b*x^(n-q)+c*x^(2*(n-q))]/Sqrt[a*x^q+b*x^n+c*x^(2*n-q)] \[Star] 
    Int[x^(q*p)*(A+B*x^(n-q))*(a+b*x^(n-q)+c*x^(2*(n-q)))^p,x] /;
FreeQ[{a,b,c,A,B,n,p,q},x] && EqQ[j,n-q] && EqQ[r,2*n-q] && PosQ[n-q] && ILtQ[p-1/2,0] *)


(* ::Code:: *)
(* Int[(A_+B_.*x_^j_.)*Sqrt[a_.*x_^q_.+b_.*x_^n_.+c_.*x_^r_.],x_Symbol] :=
  Sqrt[a*x^q+b*x^n+c*x^(2*n-q)]/(x^(q/2)*Sqrt[a+b*x^(n-q)+c*x^(2*(n-q))]) \[Star] 
    Int[x^(q/2)*(A+B*x^(n-q))*Sqrt[a+b*x^(n-q)+c*x^(2*(n-q))],x] /;
FreeQ[{a,b,c,A,B,n,q},x] && EqQ[j,n-q] && EqQ[r,2*n-q] && PosQ[n-q] *)


(* ::Code:: *)
Int[(A_+B_.*x_^j_.)/Sqrt[a_.*x_^q_.+b_.*x_^n_.+c_.*x_^r_.],x_Symbol] :=
  x^(q/2)*Sqrt[a+b*x^(n-q)+c*x^(2*(n-q))]/Sqrt[a*x^q+b*x^n+c*x^(2*n-q)] \[Star] 
    Int[(A+B*x^(n-q))/(x^(q/2)*Sqrt[a+b*x^(n-q)+c*x^(2*(n-q))]),x] /;
FreeQ[{a,b,c,A,B,n,q},x] && EqQ[j,n-q] && EqQ[r,2*n-q] && PosQ[n-q] && EqQ[n,3] && EqQ[q,2]


(* ::Code:: *)
Int[(A_+B_.*x_^r_.)*(a_.*x_^q_.+b_.*x_^n_.+c_.*x_^j_.)^p_,x_Symbol] :=
  x*(b*B*(n-q)*p+A*c*(p*q+(n-q)*(2*p+1)+1)+B*c*(p*(2*n-q)+1)*x^(n-q))*(a*x^q+b*x^n+c*x^(2*n-q))^p/
    (c*(p*(2*n-q)+1)*(p*q+(n-q)*(2*p+1)+1)) + 
  (n-q)*p/(c*(p*(2*n-q)+1)*(p*q+(n-q)*(2*p+1)+1)) \[Star] 
    Int[x^q*
      (2*a*A*c*(p*q+(n-q)*(2*p+1)+1)-a*b*B*(p*q+1)+(2*a*B*c*(p*(2*n-q)+1)+A*b*c*(p*q+(n-q)*(2*p+1)+1)-b^2*B*(p*q+(n-q)*p+1))*x^(n-q))*
      (a*x^q+b*x^n+c*x^(2*n-q))^(p-1),x] /;
FreeQ[{a,b,c,A,B,n,q},x] && EqQ[r,n-q] && EqQ[j,2*n-q] && Not[IntegerQ[p]] && NeQ[b^2-4*a*c,0] && GtQ[p,0] && 
  NeQ[p*(2*n-q)+1,0] && NeQ[p*q+(n-q)*(2*p+1)+1,0]


(* ::Code:: *)
Int[(A_+B_.*x_^r_.)*(a_.*x_^q_.+c_.*x_^j_.)^p_,x_Symbol] :=
  With[{n=q+r},
  x*(A*(p*q+(n-q)*(2*p+1)+1)+B*(p*(2*n-q)+1)*x^(n-q))*(a*x^q+c*x^(2*n-q))^p/((p*(2*n-q)+1)*(p*q+(n-q)*(2*p+1)+1)) + 
  (n-q)*p/((p*(2*n-q)+1)*(p*q+(n-q)*(2*p+1)+1)) \[Star] 
    Int[x^q*(2*a*A*(p*q+(n-q)*(2*p+1)+1)+(2*a*B*(p*(2*n-q)+1))*x^(n-q))*(a*x^q+c*x^(2*n-q))^(p-1),x] /;
 EqQ[j,2*n-q] && NeQ[p*(2*n-q)+1,0] && NeQ[p*q+(n-q)*(2*p+1)+1,0]] /;
FreeQ[{a,c,A,B,q},x] && Not[IntegerQ[p]] && GtQ[p,0]


(* ::Code:: *)
Int[(A_+B_.*x_^r_.)*(a_.*x_^q_.+b_.*x_^n_.+c_.*x_^j_.)^p_,x_Symbol] :=
  -x^(-q+1)*(A*b^2-a*b*B-2*a*A*c+(A*b-2*a*B)*c*x^(n-q))*(a*x^q+b*x^n+c*x^(2*n-q))^(p+1)/(a*(n-q)*(p+1)*(b^2-4*a*c)) + 
  1/(a*(n-q)*(p+1)*(b^2-4*a*c)) \[Star] 
    Int[x^(-q)*
      ((A*b^2*(p*q+(n-q)*(p+1)+1)-a*b*B*(p*q+1)-2*a*A*c*(p*q+2*(n-q)*(p+1)+1)+(p*q+(n-q)*(2*p+3)+1)*(A*b-2*a*B)*c*x^(n-q))*
      (a*x^q+b*x^n+c*x^(2*n-q))^(p+1)),x] /;
FreeQ[{a,b,c,A,B,n,q},x] && EqQ[r,n-q] && EqQ[j,2*n-q] && Not[IntegerQ[p]] && NeQ[b^2-4*a*c,0] && LtQ[p,-1]


(* ::Code:: *)
Int[(A_+B_.*x_^r_.)*(a_.*x_^q_.+c_.*x_^j_.)^p_,x_Symbol] :=
  With[{n=q+r},
  -x^(-q+1)*(a*A*c+a*B*c*x^(n-q))*(a*x^q+c*x^(2*n-q))^(p+1)/(a*(n-q)*(p+1)*(2*a*c)) + 
  1/(a*(n-q)*(p+1)*(2*a*c)) \[Star] 
    Int[x^(-q)*((a*A*c*(p*q+2*(n-q)*(p+1)+1)+a*B*c*(p*q+(n-q)*(2*p+3)+1)*x^(n-q))*(a*x^q+c*x^(2*n-q))^(p+1)),x] /;
 EqQ[j,2*n-q]] /;
FreeQ[{a,c,A,B,q},x] && Not[IntegerQ[p]] && LtQ[p,-1]


(* ::Code:: *)
(* Int[(A_+B_.*x_^q_)*(a_.*x_^j_.+b_.*x_^k_.+c_.*x_^n_.)^p_,x_Symbol] :=
  (a*x^j+b*x^k+c*x^n)^p/(x^(j*p)*(a+b*x^(k-j)+c*x^(2*(k-j)))^p) \[Star] 
    Int[x^(j*p)*(A+B*x^(k-j))*(a+b*x^(k-j)+c*x^(2*(k-j)))^p,x] /;
FreeQ[{a,b,c,A,B,j,k,p},x] && EqQ[q,k-j] && EqQ[n,2*k-j] && PosQ[k-j] && Not[IntegerQ[p]] *)


(* ::Code:: *)
Int[(A_+B_.*x_^j_.)*(a_.*x_^q_.+b_.*x_^n_.+c_.*x_^r_.)^p_.,x_Symbol] :=
  Unintegrable[(A+B*x^(n-q))*(a*x^q+b*x^n+c*x^(2*n-q))^p,x] /;
FreeQ[{a,b,c,A,B,n,p,q},x] && EqQ[j,n-q] && EqQ[r,2*n-q]


(* ::Code:: *)
Int[(A_+B_.*u_^j_.)*(a_.*u_^q_.+b_.*u_^n_.+c_.*u_^r_.)^p_.,x_Symbol] :=
  1/Coefficient[u,x,1] \[Star] Subst[Int[(A+B*x^(n-q))*(a*x^q+b*x^n+c*x^(2*n-q))^p,x],x,u] /;
FreeQ[{a,b,c,A,B,n,p,q},x] && EqQ[j,n-q] && EqQ[r,2*n-q] && LinearQ[u,x] && NeQ[u,x]



