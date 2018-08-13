
(* ::Subsection::Closed:: *)
(* 4.3.1.3 (d sin)^m (a+b tan)^n *)
Int[sin[e_. + f_.*x_]^m_*(a_ + b_.*tan[e_. + f_.*x_])^n_, x_Symbol] := b/f*Subst[Int[x^m*(a + x)^n/(b^2 + x^2)^(m/2 + 1), x], x, b*Tan[e + f*x]] /; FreeQ[{a, b, e, f, n}, x] && IntegerQ[m/2]
Int[sin[e_. + f_.*x_]^m_.*(a_ + b_.*tan[e_. + f_.*x_])^n_., x_Symbol] := Int[Expand[Sin[e + f*x]^m*(a + b*Tan[e + f*x])^n, x], x] /; FreeQ[{a, b, e, f}, x] && IntegerQ[(m - 1)/2] && IGtQ[n, 0]
Int[sin[e_. + f_.*x_]^m_.*(a_ + b_.*tan[e_. + f_.*x_])^n_., x_Symbol] := Int[Sin[e + f*x]^m*(a*Cos[e + f*x] + b*Sin[e + f*x])^n/ Cos[e + f*x]^n, x] /; FreeQ[{a, b, e, f}, x] && IntegerQ[(m - 1)/2] && ILtQ[n, 0] && (LtQ[m, 5] && GtQ[n, -4] || EqQ[m, 5] && EqQ[n, -1])
Int[(d_.*csc[e_. + f_.*x_])^m_*(a_. + b_.*tan[e_. + f_.*x_])^n_., x_Symbol] := (d*Csc[e + f*x])^FracPart[m]*(Sin[e + f*x]/d)^ FracPart[m]*Int[(a + b*Tan[e + f*x])^n/(Sin[e + f*x]/d)^m, x] /; FreeQ[{a, b, d, e, f, m, n}, x] && Not[IntegerQ[m]]
Int[cos[e_. + f_.*x_]^m_.* sin[e_. + f_.*x_]^p_.*(a_ + b_.*tan[e_. + f_.*x_])^n_., x_Symbol] := Int[Cos[e + f*x]^(m - n)* Sin[e + f*x]^p*(a*Cos[e + f*x] + b*Sin[e + f*x])^n, x] /; FreeQ[{a, b, e, f, m, p}, x] && IntegerQ[n]
Int[sin[e_. + f_.*x_]^m_.* cos[e_. + f_.*x_]^p_.*(a_ + b_.*cot[e_. + f_.*x_])^n_., x_Symbol] := Int[Sin[e + f*x]^(m - n)* Cos[e + f*x]^p*(a*Sin[e + f*x] + b*Cos[e + f*x])^n, x] /; FreeQ[{a, b, e, f, m, p}, x] && IntegerQ[n]
