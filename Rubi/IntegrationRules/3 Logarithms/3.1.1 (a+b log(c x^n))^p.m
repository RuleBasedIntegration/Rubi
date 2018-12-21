
(* ::Subsection::Closed:: *)
(* 3.1.1 (a+b log(c x^n))^p *)
Int[Log[c_.*x_^n_.], x_Symbol] := x*Log[c*x^n] - n*x /; FreeQ[{c, n}, x]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := x*(a + b*Log[c*x^n])^p - b*n*p*Int[(a + b*Log[c*x^n])^(p - 1), x] /; FreeQ[{a, b, c, n}, x] && GtQ[p, 0] && IntegerQ[2*p]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_, x_Symbol] := x*(a + b*Log[c*x^n])^(p + 1)/(b*n*(p + 1)) - 1/(b*n*(p + 1))*Int[(a + b*Log[c*x^n])^(p + 1), x] /; FreeQ[{a, b, c, n}, x] && LtQ[p, -1] && IntegerQ[2*p]
Int[1/Log[c_.*x_], x_Symbol] := LogIntegral[c*x]/c /; FreeQ[c, x]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_, x_Symbol] := 1/(n*c^(1/n))*Subst[Int[E^(x/n)*(a + b*x)^p, x], x, Log[c*x^n]] /; FreeQ[{a, b, c, p}, x] && IntegerQ[1/n]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_, x_Symbol] := x/(n*(c*x^n)^(1/n))* Subst[Int[E^(x/n)*(a + b*x)^p, x], x, Log[c*x^n]] /; FreeQ[{a, b, c, n, p}, x]
