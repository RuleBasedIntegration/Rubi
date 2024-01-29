
(* ::Subsection::Closed:: *)
(* 4.1.0.3 (a csc)^m (b sec)^n *)
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := a*b*(a*Csc[e + f*x])^(m - 1)*(b*Sec[e + f*x])^(n - 1)/(f*(n - 1)) /; FreeQ[{a, b, e, f, m, n}, x] && EqQ[m + n - 2, 0] && NeQ[n, 1]
Int[csc[e_. + f_.*x_]^m_.*sec[e_. + f_.*x_]^n_., x_Symbol] := 1/f*Subst[Int[(1 + x^2)^((m + n)/2 - 1)/x^m, x], x, Tan[e + f*x]] /; FreeQ[{e, f}, x] && IntegersQ[m, n, (m + n)/2]
Int[(a_.*csc[e_. + f_.*x_])^m_*sec[e_. + f_.*x_]^n_., x_Symbol] := -1/(f*a^n)* Subst[Int[x^(m + n - 1)/(-1 + x^2/a^2)^((n + 1)/2), x], x, a*Csc[e + f*x]] /; FreeQ[{a, e, f, m}, x] && IntegerQ[(n + 1)/2] && Not[IntegerQ[(m + 1)/2] && LtQ[0, m, n]]
Int[(a_.*sec[e_. + f_.*x_])^m_*csc[e_. + f_.*x_]^n_., x_Symbol] := 1/(f*a^n)* Subst[Int[x^(m + n - 1)/(-1 + x^2/a^2)^((n + 1)/2), x], x, a*Sec[e + f*x]] /; FreeQ[{a, e, f, m}, x] && IntegerQ[(n + 1)/2] && Not[IntegerQ[(m + 1)/2] && LtQ[0, m, n]]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := -a*(a*Csc[e + f*x])^(m - 1)*(b*Sec[e + f*x])^(n + 1)/(f* b*(m - 1)) + a^2*(n + 1)/(b^2*(m - 1))* Int[(a*Csc[e + f*x])^(m - 2)*(b*Sec[e + f*x])^(n + 2), x] /; FreeQ[{a, b, e, f}, x] && GtQ[m, 1] && LtQ[n, -1] && IntegersQ[2*m, 2*n]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := b*(a*Csc[e + f*x])^(m + 1)*(b*Sec[e + f*x])^(n - 1)/(f*a*(n - 1)) + b^2*(m + 1)/(a^2*(n - 1))* Int[(a*Csc[e + f*x])^(m + 2)*(b*Sec[e + f*x])^(n - 2), x] /; FreeQ[{a, b, e, f}, x] && GtQ[n, 1] && LtQ[m, -1] && IntegersQ[2*m, 2*n]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_., x_Symbol] := -a*b*(a*Csc[e + f*x])^(m - 1)*(b*Sec[e + f*x])^(n - 1)/(f*(m - 1)) + a^2*(m + n - 2)/(m - 1)* Int[(a*Csc[e + f*x])^(m - 2)*(b*Sec[e + f*x])^n, x] /; FreeQ[{a, b, e, f, n}, x] && GtQ[m, 1] && IntegersQ[2*m, 2*n] && Not[GtQ[n, m]]
Int[(a_.*csc[e_. + f_.*x_])^m_.*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := a*b*(a*Csc[e + f*x])^(m - 1)*(b*Sec[e + f*x])^(n - 1)/(f*(n - 1)) + b^2*(m + n - 2)/(n - 1)* Int[(a*Csc[e + f*x])^m*(b*Sec[e + f*x])^(n - 2), x] /; FreeQ[{a, b, e, f, m}, x] && GtQ[n, 1] && IntegersQ[2*m, 2*n]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_., x_Symbol] := b*(a*Csc[e + f*x])^(m + 1)*(b*Sec[e + f*x])^(n - 1)/(a*f*(m + n)) + (m + 1)/(a^2*(m + n))* Int[(a*Csc[e + f*x])^(m + 2)*(b*Sec[e + f*x])^n, x] /; FreeQ[{a, b, e, f, n}, x] && LtQ[m, -1] && NeQ[m + n, 0] && IntegersQ[2*m, 2*n]
Int[(a_.*csc[e_. + f_.*x_])^m_.*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := -a*(a*Csc[e + f*x])^(m - 1)*(b*Sec[e + f*x])^(n + 1)/(b* f*(m + n)) + (n + 1)/(b^2*(m + n))* Int[(a*Csc[e + f*x])^m*(b*Sec[e + f*x])^(n + 2), x] /; FreeQ[{a, b, e, f, m}, x] && LtQ[n, -1] && NeQ[m + n, 0] && IntegersQ[2*m, 2*n]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := (a*Csc[e + f*x])^m*(b*Sec[e + f*x])^n/Tan[e + f*x]^n* Int[Tan[e + f*x]^n, x] /; FreeQ[{a, b, e, f, m, n}, x] && Not[IntegerQ[n]] && EqQ[m + n, 0]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := (a*Csc[e + f*x])^m*(b*Sec[e + f*x])^n*(a*Sin[e + f*x])^ m*(b*Cos[e + f*x])^n* Int[(a*Sin[e + f*x])^(-m)*(b*Cos[e + f*x])^(-n), x] /; FreeQ[{a, b, e, f, m, n}, x] && IntegerQ[m - 1/2] && IntegerQ[n - 1/2]
Int[(a_.*csc[e_. + f_.*x_])^m_*(b_.*sec[e_. + f_.*x_])^n_, x_Symbol] := a^2/b^2*(a*Csc[e + f*x])^(m - 1)*(b*Sec[e + f*x])^(n + 1)*(a* Sin[e + f*x])^(m - 1)*(b*Cos[e + f*x])^(n + 1)* Int[(a*Sin[e + f*x])^(-m)*(b*Cos[e + f*x])^(-n), x] /; FreeQ[{a, b, e, f, m, n}, x] && Not[SimplerQ[-m, -n]]
Int[(a_.*sec[e_. + f_.*x_])^m_*(b_.*csc[e_. + f_.*x_])^n_, x_Symbol] := a^2/b^2*(a*Sec[e + f*x])^(m - 1)*(b*Csc[e + f*x])^(n + 1)*(a* Cos[e + f*x])^(m - 1)*(b*Sin[e + f*x])^(n + 1)* Int[(a*Cos[e + f*x])^(-m)*(b*Sin[e + f*x])^(-n), x] /; FreeQ[{a, b, e, f, m, n}, x]
