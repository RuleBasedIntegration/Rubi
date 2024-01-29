
(* ::Subsection::Closed:: *)
(* 4.5.1.2 (d sec)^n (a+b sec)^m *)
Int[(a_ + b_.*csc[e_. + f_.*x_])*(d_.*csc[e_. + f_.*x_])^n_., x_Symbol] := a*Int[(d*Csc[e + f*x])^n, x] + b/d*Int[(d*Csc[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, n}, x]
Int[(a_ + b_.*csc[e_. + f_.*x_])^2*(d_.*csc[e_. + f_.*x_])^n_., x_Symbol] := 2*a*b/d*Int[(d*Csc[e + f*x])^(n + 1), x] + Int[(d*Csc[e + f*x])^n*(a^2 + b^2*Csc[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f, n}, x]
Int[csc[e_. + f_.*x_]^2/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := 1/b*Int[Csc[e + f*x], x] - a/b*Int[Csc[e + f*x]/(a + b*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x]
Int[csc[e_. + f_.*x_]^3/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := -Cot[e + f*x]/(b*f) - a/b*Int[Csc[e + f*x]^2/(a + b*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_., x_Symbol] := Int[ExpandTrig[(a + b*csc[e + f*x])^m*(d*csc[e + f*x])^n, x], x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && IGtQ[m, 0] && RationalQ[n]
Int[csc[e_. + f_.*x_]*Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -2*b*Cot[e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]) /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -b*Cot[e + f*x]*(a + b*Csc[e + f*x])^(m - 1)/(f*m) + a*(2*m - 1)/m*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m - 1), x] /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, 1/2] && IntegerQ[2*m]
Int[csc[e_. + f_.*x_]/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := -Cot[e + f*x]/(f*(b + a*Csc[e + f*x])) /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -2/f*Subst[Int[1/(2*a + x^2), x], x, b*Cot[e + f*x]/Sqrt[a + b*Csc[e + f*x]]] /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := b*Cot[ e + f*x]*(a + b*Csc[e + f*x])^ m/(a*f*(2*m + 1)) + (m + 1)/(a*(2*m + 1))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1), x] /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1/2] && IntegerQ[2*m]
Int[csc[e_. + f_.*x_]^2*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^m/(f*(2*m + 1)) + m/(b*(2*m + 1))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1), x] /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1/2]
Int[csc[e_. + f_.*x_]^2*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^m/(f*(m + 1)) + a*m/(b*(m + 1))*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^m, x] /; FreeQ[{a, b, e, f, m}, x] && EqQ[a^2 - b^2, 0] && Not[LtQ[m, -1/2]]
Int[csc[e_. + f_.*x_]^3*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := b*Cot[e + f*x]*(a + b*Csc[e + f*x])^m/(a*f*(2*m + 1)) - 1/(a^2*(2*m + 1))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(a*m - b*(2*m + 1)*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1/2]
Int[csc[e_. + f_.*x_]^3*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)/(b*f*(m + 2)) + 1/(b*(m + 2))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^ m*(b*(m + 1) - a*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f, m}, x] && EqQ[a^2 - b^2, 0] && Not[LtQ[m, -1/2]]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*Sqrt[d_.*csc[e_. + f_.*x_]], x_Symbol] := -2*a/(b*f)*Sqrt[a*d/b]* Subst[Int[1/Sqrt[1 + x^2/a], x], x, b*Cot[e + f*x]/Sqrt[a + b*Csc[e + f*x]]] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && GtQ[a*d/b, 0]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*Sqrt[d_.*csc[e_. + f_.*x_]], x_Symbol] := -2*b*d/f* Subst[Int[1/(b - d*x^2), x], x, b*Cot[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[d*Csc[e + f*x]])] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && Not[GtQ[a*d/b, 0]]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -2*b*d* Cot[e + f*x]*(d*Csc[e + f*x])^(n - 1)/(f*(2*n - 1)* Sqrt[a + b*Csc[e + f*x]]) + 2*a*d*(n - 1)/(b*(2*n - 1))* Int[Sqrt[a + b*Csc[e + f*x]]*(d*Csc[e + f*x])^(n - 1), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && GtQ[n, 1] && IntegerQ[2*n]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]/Sqrt[d_.*csc[e_. + f_.*x_]], x_Symbol] := -2*a*Cot[ e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]*Sqrt[d*Csc[e + f*x]]) /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := a*Cot[ e + f*x]*(d*Csc[e + f*x])^n/(f*n*Sqrt[a + b*Csc[e + f*x]]) + a*(2*n + 1)/(2*b*d*n)* Int[Sqrt[a + b*Csc[e + f*x]]*(d*Csc[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[n, -1/2] && IntegerQ[2*n]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := a^2*d* Cot[e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]*Sqrt[a - b*Csc[e + f*x]])* Subst[Int[(d*x)^(n - 1)/Sqrt[a - b*x], x], x, Csc[e + f*x]] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0]
Int[Sqrt[d_.*csc[e_. + f_.*x_]]/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -Sqrt[2]*Sqrt[a]/(b*f)* Subst[Int[1/Sqrt[1 + x^2], x], x, b*Cot[e + f*x]/(a + b*Csc[e + f*x])] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && EqQ[d - a/b, 0] && GtQ[a, 0]
Int[Sqrt[d_.*csc[e_. + f_.*x_]]/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -2*b*d/(a*f)* Subst[Int[1/(2*b - d*x^2), x], x, b*Cot[e + f*x]/(Sqrt[a + b*Csc[e + f*x]]*Sqrt[d*Csc[e + f*x]])] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -a*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m - 1)*(d*Csc[e + f*x])^ n/(f*m) + b*(2*m - 1)/(d*m)* Int[(a + b*Csc[e + f*x])^(m - 1)*(d*Csc[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && EqQ[m + n, 0] && GtQ[m, 1/2] && IntegerQ[2*m]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := b*d*Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^(n - 1)/(a*f*(2*m + 1)) + d*(m + 1)/(b*(2*m + 1))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 1), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && EqQ[m + n, 0] && LtQ[m, -1/2] && IntegerQ[2*m]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^n/(f*(2*m + 1)) + m/(a*(2*m + 1))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^n, x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && EqQ[m + n + 1, 0] && LtQ[m, -1/2]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^n/(f*(m + 1)) + a*m/(b*d*(m + 1))* Int[(a + b*Csc[e + f*x])^m*(d*Csc[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && EqQ[m + n + 1, 0] && Not[LtQ[m, -1/2]]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := b^2*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^ n/(f*n) - a/(d*n)* Int[(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^(n + 1)*(b*(m - 2*n - 2) - a*(m + 2*n - 1)*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, 1] && (LtQ[n, -1] || EqQ[m, 3/2] && EqQ[n, -1/2]) && IntegerQ[2*m]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -b^2*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^ n/(f*(m + n - 1)) + b/(m + n - 1)* Int[(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^ n*(b*(m + 2*n - 1) + a*(3*m + 2*n - 4)*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, 1] && NeQ[m + n - 1, 0] && IntegerQ[2*m]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := b*d*Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^(n - 1)/(a*f*(2*m + 1)) - d/(a*b*(2*m + 1))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 1)*(a*(n - 1) - b*(m + n)*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1] && LtQ[1, n, 2] && (IntegersQ[2*m, 2*n] || IntegerQ[m])
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -d^2*Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^(n - 2)/(f*(2*m + 1)) + d^2/(a*b*(2*m + 1))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 2)*(b*(n - 2) + a*(m - n + 2)*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1] && GtQ[n, 2] && (IntegersQ[2*m, 2*n] || IntegerQ[m])
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^n/(f*(2*m + 1)) + 1/(a^2*(2*m + 1))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^ n*(a*(2*m + n + 1) - b*(m + n + 1)*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1] && (IntegersQ[2*m, 2*n] || IntegerQ[m])
Int[(d_.*csc[e_. + f_.*x_])^n_/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := d^2*Cot[ e + f*x]*(d*Csc[e + f*x])^(n - 2)/(f*(a + b*Csc[e + f*x])) - d^2/(a*b)* Int[(d*Csc[e + f*x])^(n - 2)*(b*(n - 2) - a*(n - 1)*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && GtQ[n, 1]
Int[(d_.*csc[e_. + f_.*x_])^n_/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := Cot[e + f*x]*(d*Csc[e + f*x])^n/(f*(a + b*Csc[e + f*x])) - 1/a^2*Int[(d*Csc[e + f*x])^n*(a*(n - 1) - b*n*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[n, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := -b*d*Cot[ e + f*x]*(d*Csc[e + f*x])^(n - 1)/(a*f*(a + b*Csc[e + f*x])) + d*(n - 1)/(a*b)* Int[(d*Csc[e + f*x])^(n - 1)*(a - b*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^(3/2)/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := d/b*Int[Sqrt[a + b*Csc[e + f*x]]*Sqrt[d*Csc[e + f*x]], x] - a*d/b*Int[Sqrt[d*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -2*d^2* Cot[e + f*x]*(d*Csc[e + f*x])^(n - 2)/(f*(2*n - 3)* Sqrt[a + b*Csc[e + f*x]]) + d^2/(b*(2*n - 3))* Int[(d*Csc[e + f*x])^(n - 2)*(2*b*(n - 2) - a*Csc[e + f*x])/ Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && GtQ[n, 2] && IntegerQ[2*n]
Int[(d_.*csc[e_. + f_.*x_])^n_/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := Cot[e + f*x]*(d*Csc[e + f*x])^n/(f*n*Sqrt[a + b*Csc[e + f*x]]) + 1/(2*b*d*n)* Int[(d*Csc[e + f*x])^(n + 1)*(a + b*(2*n + 1)*Csc[e + f*x])/ Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[n, 0] && IntegerQ[2*n]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -d^2*Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^(n - 2)/(f*(m + n - 1)) + d^2/(b*(m + n - 1))* Int[(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^(n - 2)*(b*(n - 2) + a*m*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f, m}, x] && EqQ[a^2 - b^2, 0] && GtQ[n, 2] && NeQ[m + n - 1, 0] && IntegerQ[n]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -(a*d/b)^n* Cot[e + f*x]/(a^(n - 2)*f*Sqrt[a + b*Csc[e + f*x]]* Sqrt[a - b*Csc[e + f*x]])* Subst[Int[(a - x)^(n - 1)*(2*a - x)^(m - 1/2)/Sqrt[x], x], x, a - b*Csc[e + f*x]] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]] && GtQ[a, 0] && Not[IntegerQ[n]] && GtQ[a*d/b, 0]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -(-a*d/b)^n* Cot[e + f*x]/(a^(n - 1)*f*Sqrt[a + b*Csc[e + f*x]]* Sqrt[a - b*Csc[e + f*x]])* Subst[Int[x^(m - 1/2)*(a - x)^(n - 1)/Sqrt[2*a - x], x], x, a + b*Csc[e + f*x]] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]] && GtQ[a, 0] && Not[IntegerQ[n]] && LtQ[a*d/b, 0]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_., x_Symbol] := a^2*d* Cot[e + f*x]/(f*Sqrt[a + b*Csc[e + f*x]]* Sqrt[a - b*Csc[e + f*x]])* Subst[Int[(d*x)^(n - 1)*(a + b*x)^(m - 1/2)/Sqrt[a - b*x], x], x, Csc[e + f*x]] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]] && GtQ[a, 0]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_., x_Symbol] := a^IntPart[m]*(a + b*Csc[e + f*x])^ FracPart[m]/(1 + b/a*Csc[e + f*x])^FracPart[m]* Int[(1 + b/a*Csc[e + f*x])^m*(d*Csc[e + f*x])^n, x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]] && Not[GtQ[a, 0]]
Int[csc[e_. + f_.*x_]*Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := (a - b)*Int[Csc[e + f*x]/Sqrt[a + b*Csc[e + f*x]], x] + b*Int[Csc[e + f*x]*(1 + Csc[e + f*x])/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -b*Cot[e + f*x]*(a + b*Csc[e + f*x])^(m - 1)/(f*m) + 1/m* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m - 2)*(b^2*(m - 1) + a^2*m + a*b*(2*m - 1)*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 1] && IntegerQ[2*m]
(* Int[csc[e_.+f_.*x_]/(a_+b_.*csc[e_.+f_.*x_]),x_Symbol] := -2/f*Subst[Int[1/(a+b-(a-b)*x^2),x],x,Cot[e+f*x]/(1+Csc[e+f*x])] /; FreeQ[{a,b,e,f},x] && NeQ[a^2-b^2,0] *)
Int[csc[e_. + f_.*x_]/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := 1/b*Int[1/(1 + a/b*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -2*Rt[a + b, 2]/(b*f*Cot[e + f*x])* Sqrt[(b*(1 - Csc[e + f*x]))/(a + b)]* Sqrt[-b*(1 + Csc[e + f*x])/(a - b)]* EllipticF[ ArcSin[Sqrt[a + b*Csc[e + f*x]]/Rt[a + b, 2]], (a + b)/(a - b)] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -b*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m + 1)/(f*(m + 1)*(a^2 - b^2)) + 1/((m + 1)*(a^2 - b^2))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(a*(m + 1) - b*(m + 2)*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && IntegerQ[2*m]
Int[csc[e_. + f_.*x_]*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := Cot[e + f*x]/(f*Sqrt[1 + Csc[e + f*x]]*Sqrt[1 - Csc[e + f*x]])* Subst[Int[(a + b*x)^m/(Sqrt[1 + x]*Sqrt[1 - x]), x], x, Csc[e + f*x]] /; FreeQ[{a, b, e, f, m}, x] && NeQ[a^2 - b^2, 0] && Not[IntegerQ[2*m]]
Int[csc[e_. + f_.*x_]^2*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^m/(f*(m + 1)) + m/(m + 1)* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m - 1)*(b + a*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 0]
Int[csc[e_. + f_.*x_]^2*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := a*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m + 1)/(f*(m + 1)*(a^2 - b^2)) - 1/((m + 1)*(a^2 - b^2))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(b*(m + 1) - a*(m + 2)*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1]
Int[csc[e_. + f_.*x_]^2/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -Int[Csc[e + f*x]/Sqrt[a + b*Csc[e + f*x]], x] + Int[Csc[e + f*x]*(1 + Csc[e + f*x])/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]^2*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -a/b*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^m, x] + 1/b*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1), x] /; FreeQ[{a, b, e, f, m}, x] && NeQ[a^2 - b^2, 0]
Int[csc[e_. + f_.*x_]^3*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -a^2*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m + 1)/(b*f*(m + 1)*(a^2 - b^2)) + 1/(b*(m + 1)*(a^2 - b^2))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)* Simp[a*b*(m + 1) - (a^2 + b^2*(m + 1))*Csc[e + f*x], x], x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1]
Int[csc[e_. + f_.*x_]^3*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -Cot[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)/(b*f*(m + 2)) + 1/(b*(m + 2))* Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^ m*(b*(m + 1) - a*Csc[e + f*x]), x] /; FreeQ[{a, b, e, f, m}, x] && NeQ[a^2 - b^2, 0] && Not[LtQ[m, -1]]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := a^2*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^ n/(f*n) - 1/(d*n)*Int[(a + b*Csc[e + f*x])^(m - 3)*(d*Csc[e + f*x])^(n + 1)* Simp[a^2*b*(m - 2*n - 2) - a*(3*b^2*n + a^2*(n + 1))*Csc[e + f*x] - b*(b^2*n + a^2*(m + n - 1))*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 2] && (IntegerQ[m] && LtQ[n, -1] || IntegersQ[m + 1/2, 2*n] && LeQ[n, -1])
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -b^2*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^ n/(f*(m + n - 1)) + 1/(d*(m + n - 1))* Int[(a + b*Csc[e + f*x])^(m - 3)*(d*Csc[e + f*x])^n* Simp[a^3*d*(m + n - 1) + a*b^2*d*n + b*(b^2*d*(m + n - 2) + 3*a^2*d*(m + n - 1))*Csc[e + f*x] + a*b^2*d*(3*m + 2*n - 4)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, n}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 2] && (IntegerQ[m] || IntegersQ[2*m, 2*n]) && Not[IGtQ[n, 2] && Not[IntegerQ[m]]]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -b*d*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 1)/(f*(m + 1)*(a^2 - b^2)) + 1/((m + 1)*(a^2 - b^2))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 1)* Simp[b*d*(n - 1) + a*d*(m + 1)*Csc[e + f*x] - b*d*(m + n + 1)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && LtQ[0, n, 1] && IntegersQ[2*m, 2*n]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := a*d^2* Cot[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 2)/(f*(m + 1)*(a^2 - b^2)) - d^2/((m + 1)*(a^2 - b^2))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 2)*(a*(n - 2) + b*(m + 1)*Csc[e + f*x] - a*(m + n)*Csc[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && LtQ[1, n, 2] && IntegersQ[2*m, 2*n]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -a^2*d^3* Cot[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 3)/(b*f*(m + 1)*(a^2 - b^2)) + d^3/(b*(m + 1)*(a^2 - b^2))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 3)* Simp[a^2*(n - 3) + a*b*(m + 1)*Csc[e + f*x] - (a^2*(n - 2) + b^2*(m + 1))* Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && (IGtQ[n, 3] || IntegersQ[n + 1/2, 2*m] && GtQ[n, 2])
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := Cot[e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^ n/(a*f*n) - 1/(a*d*n)*Int[(a + b*Csc[e + f*x])^m*(d*Csc[e + f*x])^(n + 1)* Simp[b*(m + n + 1) - a*(n + 1)*Csc[e + f*x] - b*(m + n + 2)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && ILtQ[m + 1/2, 0] && ILtQ[n, 0]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := b^2*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^ n/(a*f*(m + 1)*(a^2 - b^2)) + 1/(a*(m + 1)*(a^2 - b^2))* Int[(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^n* (a^2*(m + 1) - b^2*(m + n + 1) - a*b*(m + 1)*Csc[e + f*x] + b^2*(m + n + 2)*Csc[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f, n}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && IntegersQ[2*m, 2*n]
Int[Sqrt[d_.*csc[e_. + f_.*x_]]/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := Sqrt[d*Sin[e + f*x]]*Sqrt[d*Csc[e + f*x]]/d* Int[Sqrt[d*Sin[e + f*x]]/(b + a*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^(3/2)/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := d*Sqrt[d*Sin[e + f*x]]*Sqrt[d*Csc[e + f*x]]* Int[1/(Sqrt[d*Sin[e + f*x]]*(b + a*Sin[e + f*x])), x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^(5/2)/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := d/b*Int[(d*Csc[e + f*x])^(3/2), x] - a*d/b*Int[(d*Csc[e + f*x])^(3/2)/(a + b*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := -d^3*Cot[e + f*x]*(d*Csc[e + f*x])^(n - 3)/(b*f*(n - 2)) + d^3/(b*(n - 2))* Int[(d*Csc[e + f*x])^(n - 3)* Simp[a*(n - 3) + b*(n - 3)*Csc[e + f*x] - a*(n - 2)*Csc[e + f*x]^2, x]/(a + b*Csc[e + f*x]), x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && GtQ[n, 3]
Int[1/(Sqrt[d_.*csc[e_. + f_.*x_]]*(a_ + b_.*csc[e_. + f_.*x_])), x_Symbol] := b^2/(a^2*d^2)*Int[(d*Csc[e + f*x])^(3/2)/(a + b*Csc[e + f*x]), x] + 1/a^2*Int[(a - b*Csc[e + f*x])/Sqrt[d*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_/(a_ + b_.*csc[e_. + f_.*x_]), x_Symbol] := Cot[e + f*x]*(d*Csc[e + f*x])^n/(a*f*n) - 1/(a*d*n)*Int[(d*Csc[e + f*x])^(n + 1)/(a + b*Csc[e + f*x])* Simp[b*n - a*(n + 1)*Csc[e + f*x] - b*(n + 1)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LeQ[n, -1] && IntegerQ[2*n]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*Sqrt[d_.*csc[e_. + f_.*x_]], x_Symbol] := a*Int[Sqrt[d*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]], x] + b/d*Int[(d*Csc[e + f*x])^(3/2)/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -2*d*Cos[e + f*x]* Sqrt[a + b*Csc[e + f*x]]*(d*Csc[e + f*x])^(n - 1)/(f*(2*n - 1)) + d^2/(2*n - 1)* Int[(d*Csc[e + f*x])^(n - 2)* Simp[2*a*(n - 2) + b*(2*n - 3)*Csc[e + f*x] + a*Csc[e + f*x]^2, x]/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && GtQ[n, 1] && IntegerQ[2*n]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]/Sqrt[d_.*csc[e_. + f_.*x_]], x_Symbol] := Sqrt[a + b*Csc[e + f*x]]/(Sqrt[d*Csc[e + f*x]]* Sqrt[b + a*Sin[e + f*x]])*Int[Sqrt[b + a*Sin[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := Cot[e + f*x]*Sqrt[a + b*Csc[e + f*x]]*(d*Csc[e + f*x])^n/(f*n) - 1/(2*d*n)* Int[(d*Csc[e + f*x])^(n + 1)* Simp[b - 2*a*(n + 1)*Csc[e + f*x] - b*(2*n + 3)*Csc[e + f*x]^2, x]/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LeQ[n, -1] && IntegerQ[2*n]
Int[Sqrt[d_.*csc[e_. + f_.*x_]]/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := Sqrt[d*Csc[e + f*x]]* Sqrt[b + a*Sin[e + f*x]]/Sqrt[a + b*Csc[e + f*x]]* Int[1/Sqrt[b + a*Sin[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^(3/2)/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := d*Sqrt[d*Csc[e + f*x]]* Sqrt[b + a*Sin[e + f*x]]/Sqrt[a + b*Csc[e + f*x]]* Int[1/(Sin[e + f*x]*Sqrt[b + a*Sin[e + f*x]]), x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := -2*d^2*Cos[e + f*x]*(d*Csc[e + f*x])^(n - 2)* Sqrt[a + b*Csc[e + f*x]]/(b*f*(2*n - 3)) + d^3/(b*(2*n - 3))* Int[(d*Csc[e + f*x])^(n - 3)/Sqrt[a + b*Csc[e + f*x]]* Simp[2*a*(n - 3) + b*(2*n - 5)*Csc[e + f*x] - 2*a*(n - 2)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && GtQ[n, 2] && IntegerQ[2*n]
Int[1/(csc[e_. + f_.*x_]*Sqrt[a_ + b_.*csc[e_. + f_.*x_]]), x_Symbol] := -Cos[e + f*x]*Sqrt[a + b*Csc[e + f*x]]/(a*f) - b/(2*a)*Int[(1 + Csc[e + f*x]^2)/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[1/(Sqrt[a_ + b_.*csc[e_. + f_.*x_]]*Sqrt[d_.*csc[e_. + f_.*x_]]), x_Symbol] := 1/a*Int[Sqrt[a + b*Csc[e + f*x]]/Sqrt[d*Csc[e + f*x]], x] - b/(a*d)*Int[Sqrt[d*Csc[e + f*x]]/Sqrt[a + b*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_/Sqrt[a_ + b_.*csc[e_. + f_.*x_]], x_Symbol] := Cos[e + f*x]*(d*Csc[e + f*x])^(n + 1)* Sqrt[a + b*Csc[e + f*x]]/(a*d*f*n) + 1/(2*a*d*n)*Int[(d*Csc[e + f*x])^(n + 1)/Sqrt[a + b*Csc[e + f*x]]* Simp[-b*(2*n + 1) + 2*a*(n + 1)*Csc[e + f*x] + b*(2*n + 3)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[n, -1] && IntegerQ[2*n]
Int[(a_ + b_.*csc[e_. + f_.*x_])^(3/2)*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := a*Cot[e + f*x]* Sqrt[a + b*Csc[e + f*x]]*(d*Csc[e + f*x])^n/(f*n) + 1/(2*d*n)*Int[(d*Csc[e + f*x])^(n + 1)/Sqrt[a + b*Csc[e + f*x]]* Simp[a*b*(2*n - 1) + 2*(b^2*n + a^2*(n + 1))*Csc[e + f*x] + a*b*(2*n + 3)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LeQ[n, -1] && IntegersQ[2*n]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -d^3*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m + 1)*(d*Csc[e + f*x])^(n - 3)/(b*f*(m + n - 1)) + d^3/(b*(m + n - 1))* Int[(a + b*Csc[e + f*x])^m*(d*Csc[e + f*x])^(n - 3)* Simp[a*(n - 3) + b*(m + n - 2)*Csc[e + f*x] - a*(n - 2)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, m}, x] && NeQ[a^2 - b^2, 0] && GtQ[n, 3] && (IntegerQ[n] || IntegersQ[2*m, 2*n]) && Not[IGtQ[m, 2]]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -b*d*Cot[ e + f*x]*(a + b*Csc[e + f*x])^(m - 1)*(d*Csc[e + f*x])^(n - 1)/(f*(m + n - 1)) + d/(m + n - 1)* Int[(a + b*Csc[e + f*x])^(m - 2)*(d*Csc[e + f*x])^(n - 1)* Simp[a*b*(n - 1) + (b^2*(m + n - 2) + a^2*(m + n - 1))* Csc[e + f*x] + a*b*(2*m + n - 2)*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[0, m, 2] && LtQ[0, n, 3] && NeQ[m + n - 1, 0] && (IntegerQ[m] || IntegersQ[2*m, 2*n])
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_*(d_.*csc[e_. + f_.*x_])^n_, x_Symbol] := -d^2*Cot[e + f*x]*(a + b*Csc[e + f*x])^ m*(d*Csc[e + f*x])^(n - 2)/(f*(m + n - 1)) + d^2/(b*(m + n - 1))* Int[(a + b*Csc[e + f*x])^(m - 1)*(d*Csc[e + f*x])^(n - 2)* Simp[a*b*(n - 2) + b^2*(m + n - 2)*Csc[e + f*x] + a*b*m*Csc[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && LtQ[-1, m, 2] && LtQ[1, n, 3] && NeQ[m + n - 1, 0] && (IntegerQ[n] || IntegersQ[2*m, 2*n])
Int[(a_ + b_.*csc[e_. + f_.*x_])^(3/2)/Sqrt[d_.*csc[e_. + f_.*x_]], x_Symbol] := a*Int[Sqrt[a + b*Csc[e + f*x]]/Sqrt[d*Csc[e + f*x]], x] + b/d*Int[Sqrt[a + b*Csc[e + f*x]]*Sqrt[d*Csc[e + f*x]], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[(d_.*csc[e_. + f_.*x_])^n_.*(a_ + b_.*csc[e_. + f_.*x_])^m_., x_Symbol] := Sin[e + f*x]^n*(d*Csc[e + f*x])^n* Int[(b + a*Sin[e + f*x])^m/Sin[e + f*x]^(m + n), x] /; FreeQ[{a, b, d, e, f, n}, x] && NeQ[a^2 - b^2, 0] && IntegerQ[m]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_.*(d_.*csc[e_. + f_.*x_])^n_., x_Symbol] := Unintegrable[(a + b*Csc[e + f*x])^m*(d*Csc[e + f*x])^n, x] /; FreeQ[{a, b, d, e, f, m, n}, x]
Int[(d_.*cos[e_. + f_.*x_])^m_*(a_. + b_.*sec[e_. + f_.*x_])^p_, x_Symbol] := (d*Cos[e + f*x])^FracPart[m]*(Sec[e + f*x]/d)^FracPart[m]* Int[(Sec[e + f*x]/d)^(-m)*(a + b*Sec[e + f*x])^p, x] /; FreeQ[{a, b, d, e, f, m, p}, x] && Not[IntegerQ[m]] && Not[IntegerQ[p]]
