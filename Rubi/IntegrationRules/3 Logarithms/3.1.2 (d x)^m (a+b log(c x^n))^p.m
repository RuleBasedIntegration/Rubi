
(* ::Subsection::Closed:: *)
(* 3.1.2 (d x)^m (a+b log(c x^n))^p *)
Int[(a_. + b_.*Log[c_.*x_^n_.])/x_, x_Symbol] := (a + b*Log[c*x^n])^2/(2*b*n) /; FreeQ[{a, b, c, n}, x]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := 1/(b*n)*Subst[Int[x^p, x], x, a + b*Log[c*x^n]] /; FreeQ[{a, b, c, n, p}, x]
Int[(d_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := b*(d*x)^(m + 1)*Log[c*x^n]/(d*(m + 1)) /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[m, -1] && EqQ[a*(m + 1) - b*n, 0]
Int[(d_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := (d*x)^(m + 1)*(a + b*Log[c*x^n])/(d*(m + 1)) - b*n*(d*x)^(m + 1)/(d*(m + 1)^2) /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[m, -1]
Int[(d_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := (d*x)^(m + 1)*(a + b*Log[c*x^n])^p/(d*(m + 1)) - b*n*p/(m + 1)*Int[(d*x)^m*(a + b*Log[c*x^n])^(p - 1), x] /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[m, -1] && GtQ[p, 0]
Int[(d_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^p_, x_Symbol] := (d*x)^(m + 1)*(a + b*Log[c*x^n])^(p + 1)/(b*d* n*(p + 1)) - (m + 1)/(b*n*(p + 1))* Int[(d*x)^m*(a + b*Log[c*x^n])^(p + 1), x] /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[m, -1] && LtQ[p, -1]
Int[x_^m_./Log[c_.*x_^n_], x_Symbol] := 1/n*Subst[Int[1/Log[c*x], x], x, x^n] /; FreeQ[{c, m, n}, x] && EqQ[m, n - 1]
Int[(d_*x_)^m_./Log[c_.*x_^n_], x_Symbol] := (d*x)^m/x^m*Int[x^m/Log[c*x^n], x] /; FreeQ[{c, d, m, n}, x] && EqQ[m, n - 1]
Int[x_^m_.*(a_. + b_.*Log[c_.*x_])^p_, x_Symbol] := 1/c^(m + 1)*Subst[Int[E^((m + 1)*x)*(a + b*x)^p, x], x, Log[c*x]] /; FreeQ[{a, b, c, p}, x] && IntegerQ[m]
Int[(d_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^p_, x_Symbol] := (d*x)^(m + 1)/(d*n*(c*x^n)^((m + 1)/n))* Subst[Int[E^((m + 1)/n*x)*(a + b*x)^p, x], x, Log[c*x^n]] /; FreeQ[{a, b, c, d, m, n, p}, x]
Int[(d_.*x_^q_)^m_*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := (d*x^q)^m/x^(m*q)* Int[x^(m*q)*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n, p, q}, x]
Int[(d1_.*x_^q1_)^m1_*(d2_.*x_^q2_)^m2_*(a_. + b_.*Log[c_.*x_^n_.])^ p_., x_Symbol] := (d1*x^q1)^m1*(d2*x^q2)^m2/x^(m1*q1 + m2*q2)* Int[x^(m1*q1 + m2*q2)*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d1, d2, m1, m2, n, p, q1, q2}, x]
