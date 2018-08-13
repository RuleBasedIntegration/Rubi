
(* ::Subsection::Closed:: *)
(* 4.1.2.2 (g cos)^p (a+b sin)^m (c+d sin)^n *)
Int[cos[e_. + f_.*x_]*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := 1/(b*f)*Subst[Int[(a + x)^m*(c + d/b*x)^n, x], x, b*Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, m, n}, x]
Int[cos[e_. + f_.*x_]^p_*(d_.*sin[e_. + f_.*x_])^ n_.*(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := a*Int[Cos[e + f*x]^p*(d*Sin[e + f*x])^n, x] + b/d*Int[Cos[e + f*x]^p*(d*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, n, p}, x] && IntegerQ[(p - 1)/2] && IntegerQ[ n] && (LtQ[p, 0] && NeQ[a^2 - b^2, 0] || LtQ[0, n, p - 1] || LtQ[p + 1, -n, 2*p + 1])
Int[cos[e_. + f_.*x_]^ p_*(d_.*sin[e_. + f_.*x_])^n_./(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := 1/a*Int[Cos[e + f*x]^(p - 2)*(d*Sin[e + f*x])^n, x] - 1/(b*d)*Int[Cos[e + f*x]^(p - 2)*(d*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, n, p}, x] && IntegerQ[(p - 1)/2] && EqQ[a^2 - b^2, 0] && IntegerQ[ n] && (LtQ[0, n, (p + 1)/2] || LeQ[p, -n] && LtQ[-n, 2*p - 3] || GtQ[n, 0] && LeQ[n, -p])
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := 1/(b^p*f)* Subst[Int[(a + x)^(m + (p - 1)/2)*(a - x)^((p - 1)/2)*(c + d/b*x)^ n, x], x, b*Sin[e + f*x]] /; FreeQ[{a, b, e, f, c, d, m, n}, x] && IntegerQ[(p - 1)/2] && EqQ[a^2 - b^2, 0]
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := 1/(b^p*f)* Subst[Int[(a + x)^m*(c + d/b*x)^n*(b^2 - x^2)^((p - 1)/2), x], x, b*Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && IntegerQ[(p - 1)/2] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_.*(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := a*Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^n, x] + b/d*Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, g, n, p}, x]
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_./(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := g^2/a*Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^n, x] - g^2/(b*d)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, d, e, f, g, n, p}, x] && EqQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_ + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := a^m*c^m/g^(2*m)* Int[(g*Cos[e + f*x])^(2*m + p)*(c + d*Sin[e + f*x])^(n - m), x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[m] && Not[IntegerQ[n] && LtQ[n^2, m^2]]
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_ + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := 1/(a^(p/2)*c^(p/2))* Int[(a + b*Sin[e + f*x])^(m + p/2)*(c + d*Sin[e + f*x])^(n + p/2), x] /; FreeQ[{a, b, c, d, e, f, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IntegerQ[p/2]
Int[(g_.*cos[e_. + f_.*x_])^ p_/(Sqrt[a_ + b_.*sin[e_. + f_.*x_]]* Sqrt[c_ + d_.*sin[e_. + f_.*x_]]), x_Symbol] := g*Cos[e + f*x]/(Sqrt[a + b*Sin[e + f*x]]*Sqrt[c + d*Sin[e + f*x]])* Int[(g*Cos[e + f*x])^(p - 1), x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := a^IntPart[m]* c^IntPart[m]*(a + b*Sin[e + f*x])^ FracPart[m]*(c + d*Sin[e + f*x])^FracPart[m]/ (g^(2*IntPart[m])*(g*Cos[e + f*x])^(2*FracPart[m]))* Int[(g*Cos[e + f*x])^(2*m + p)/(c + d*Sin[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && EqQ[2*m + p - 1, 0] && EqQ[m - n - 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^n/(f*g*(m - n - 1)) /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && EqQ[2*m + p - 1, 0] && NeQ[m - n - 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := -2* b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^n/(f*g*(2*n + p + 1)) - b*(2*m + p - 1)/(d*(2*n + p + 1))* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IGtQ[Simplify[m + p/2 - 1/2], 0] && LtQ[n, -1] && NeQ[2*n + p + 1, 0] && Not[ILtQ[Simplify[m + n + p], 0] && GtQ[Simplify[2*m + n + 3*p/2 + 1], 0]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^ n/(f*g*(m + n + p)) + a*(2*m + p - 1)/(m + n + p)* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && IGtQ[Simplify[m + p/2 - 1/2], 0] && Not[LtQ[n, -1]] && Not[IGtQ[Simplify[n + p/2 - 1/2], 0] && GtQ[m - n, 0]] && Not[ILtQ[Simplify[m + n + p], 0] && GtQ[Simplify[2*m + n + 3*p/2 + 1], 0]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^m_, x_Symbol] := a^IntPart[m]* c^IntPart[m]*(a + b*Sin[e + f*x])^ FracPart[m]*(c + d*Sin[e + f*x])^FracPart[m]/ (g^(2*IntPart[m])*(g*Cos[e + f*x])^(2*FracPart[m]))* Int[(g*Cos[e + f*x])^(2*m + p), x] /; FreeQ[{a, b, c, d, e, f, g, m, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && EqQ[2*m + p + 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m*(c + d*Sin[e + f*x])^n/(a*f*g*(m - n)) /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && EqQ[m + n + p + 1, 0] && NeQ[m, n]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m*(c + d*Sin[e + f*x])^n/(a*f*g*(2*m + p + 1)) + (m + n + p + 1)/(a*(2*m + p + 1))* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m + 1)*(c + d*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && ILtQ[Simplify[m + n + p + 1], 0] && NeQ[2*m + p + 1, 0] && (SumSimplerQ[m, 1] || Not[SumSimplerQ[n, 1]])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := -2* b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^n/(f*g*(2*n + p + 1)) - b*(2*m + p - 1)/(d*(2*n + p + 1))* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && GtQ[m, 0] && LtQ[n, -1] && NeQ[2*n + p + 1, 0] && IntegersQ[2*m, 2*n, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := -b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^ n/(f*g*(m + n + p)) + a*(2*m + p - 1)/(m + n + p)* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m - 1)*(c + d*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && GtQ[m, 0] && NeQ[m + n + p, 0] && Not[LtQ[0, n, m]] && IntegersQ[2*m, 2*n, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m*(c + d*Sin[e + f*x])^n/(a*f*g*(2*m + p + 1)) + (m + n + p + 1)/(a*(2*m + p + 1))* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m + 1)*(c + d*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && LtQ[m, -1] && NeQ[2*m + p + 1, 0] && Not[LtQ[m, n, -1]] && IntegersQ[2*m, 2*n, 2*p]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := a^IntPart[m]* c^IntPart[m]*(a + b*Sin[e + f*x])^ FracPart[m]*(c + d*Sin[e + f*x])^FracPart[m]/ (g^(2*IntPart[m])*(g*Cos[e + f*x])^(2*FracPart[m]))* Int[(g*Cos[e + f*x])^(2*m + p)*(c + d*Sin[e + f*x])^(n - m), x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && EqQ[b*c + a*d, 0] && EqQ[a^2 - b^2, 0] && (FractionQ[m] || Not[FractionQ[n]])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -d*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(f*g*(m + p + 1)) /; FreeQ[{a, b, c, d, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && EqQ[a*d*m + b*c*(m + p + 1), 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -(b*c + a*d)*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^m/(a*f*g*(p + 1)) + b*(a*d*m + b*c*(m + p + 1))/(a*g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 1), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && EqQ[a^2 - b^2, 0] && GtQ[m, -1] && LtQ[p, -1]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -d*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(f*g*(m + p + 1)) + (a*d*m + b*c*(m + p + 1))/(b*(m + p + 1))* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, c, d, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && IGtQ[Simplify[(2*m + p + 1)/2], 0] && NeQ[m + p + 1, 0]
Int[cos[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := 2*(b*c - a*d)* Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)/(b^2*f*(2*m + 3)) + 1/(b^3*(2*m + 3))* Int[(a + b*Sin[e + f*x])^(m + 2)*(b*c + 2*a*d*(m + 1) - b*d*(2*m + 3)*Sin[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -3/2]
Int[cos[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := d*Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 2)/(b^2*f*(m + 3)) - 1/(b^2*(m + 3))* Int[(a + b*Sin[e + f*x])^(m + 1)*(b*d*(m + 2) - a*c*(m + 3) + (b*c*(m + 3) - a*d*(m + 4))*Sin[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f}, x] && EqQ[a^2 - b^2, 0] && GeQ[m, -3/2] && LtQ[m, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := (b*c - a*d)*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(a*f*g*(2*m + p + 1)) + (a*d*m + b*c*(m + p + 1))/(a*b*(2*m + p + 1))* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m + 1), x] /; FreeQ[{a, b, c, d, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && (LtQ[m, -1] || ILtQ[Simplify[m + p], 0]) && NeQ[2*m + p + 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -d*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(f*g*(m + p + 1)) + (a*d*m + b*c*(m + p + 1))/(b*(m + p + 1))* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, c, d, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && NeQ[m + p + 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m*(d + c*Sin[e + f*x])/(f*g*(p + 1)) + 1/(g^2*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 1)* Simp[a*c*(p + 2) + b*d*m + b*c*(m + p + 2)*Sin[e + f*x], x], x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 0] && LtQ[p, -1] && IntegerQ[2*m] && Not[EqQ[m, 1] && NeQ[c^2 - d^2, 0] && SimplerQ[c + d*x, a + b*x]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -d*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(f*g*(m + p + 1)) + 1/(m + p + 1)* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m - 1)* Simp[a*c*(m + p + 1) + b*d*m + (a*d*m + b*c*(m + p + 1))*Sin[e + f*x], x], x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 0] && Not[LtQ[p, -1]] && IntegerQ[2*m] && Not[EqQ[m, 1] && NeQ[c^2 - d^2, 0] && SimplerQ[c + d*x, a + b*x]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)*(b*c*(m + p + 1) - a*d*p + b*d*(m + 1)*Sin[e + f*x])/(b^2* f*(m + 1)*(m + p + 1)) + g^2*(p - 1)/(b^2*(m + 1)*(m + p + 1))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^(m + 1)* Simp[b*d*(m + 1) + (b*c*(m + p + 1) - a*d*p)*Sin[e + f*x], x], x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && GtQ[p, 1] && NeQ[m + p + 1, 0] && IntegerQ[2*m]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := -(b*c - a*d)*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)/(f*g*(a^2 - b^2)*(m + 1)) + 1/((a^2 - b^2)*(m + 1))* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^(m + 1)* Simp[(a*c - b*d)*(m + 1) - (b*c - a*d)*(m + p + 2)*Sin[e + f*x], x], x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && IntegerQ[2*m]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := g*(g*Cos[e + f*x])^(p - 1)*(a + b*Sin[e + f*x])^(m + 1)*(b*c*(m + p + 1) - a*d*p + b*d*(m + p)*Sin[e + f*x])/(b^2* f*(m + p)*(m + p + 1)) + g^2*(p - 1)/(b^2*(m + p)*(m + p + 1))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^m* Simp[b*(a*d*m + b*c*(m + p + 1)) + (a*b*c*(m + p + 1) - d*(a^2*p - b^2*(m + p)))*Sin[e + f*x], x], x] /; FreeQ[{a, b, c, d, e, f, g, m}, x] && NeQ[a^2 - b^2, 0] && GtQ[p, 1] && NeQ[m + p, 0] && NeQ[m + p + 1, 0] && IntegerQ[2*m]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_]), x_Symbol] := (g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)*(b*c - a*d - (a*c - b*d)*Sin[e + f*x])/(f* g*(a^2 - b^2)*(p + 1)) + 1/(g^2*(a^2 - b^2)*(p + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^m* Simp[c*(a^2*(p + 2) - b^2*(m + p + 2)) + a*b*d*m + b*(a*c - b*d)*(m + p + 3)*Sin[e + f*x], x], x] /; FreeQ[{a, b, c, d, e, f, g, m}, x] && NeQ[a^2 - b^2, 0] && LtQ[p, -1] && IntegerQ[2*m]
Int[(g_.*cos[e_. + f_.*x_])^ p_*(c_. + d_.*sin[e_. + f_.*x_])/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := d/b*Int[(g*Cos[e + f*x])^p, x] + (b*c - a*d)/b* Int[(g*Cos[e + f*x])^p/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_]), x_Symbol] := c*g*(g*Cos[e + f*x])^(p - 1)/(f*(1 + Sin[e + f*x])^((p - 1)/2)*(1 - Sin[e + f*x])^((p - 1)/2))* Subst[ Int[(1 + d/c*x)^((p + 1)/2)*(1 - d/c*x)^((p - 1)/2)*(a + b*x)^m, x], x, Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && NeQ[a^2 - b^2, 0] && EqQ[c^2 - d^2, 0]
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := a^(2*m)*Int[(d*Sin[e + f*x])^n/(a - b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && IntegersQ[m, p] && EqQ[2*m + p, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_* sin[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := -(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)/(2*b*f*g*(m + 1)) + a/(2*g^2)* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 1), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && EqQ[m - p, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_* sin[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^m/(a*f*g*m) - 1/g^2*Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && EqQ[m + p + 1, 0]
Int[cos[e_. + f_.*x_]^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := 1/a^p*Int[ ExpandTrig[(d*sin[e + f*x])^ n*(a - b*sin[e + f*x])^(p/2)*(a + b*sin[e + f*x])^(m + p/2), x], x] /; FreeQ[{a, b, d, e, f}, x] && EqQ[a^2 - b^2, 0] && IntegersQ[m, n, p/2] && (GtQ[m, 0] && GtQ[p, 0] && LtQ[-m - p, n, -1] || GtQ[m, 2] && LtQ[p, 0] && GtQ[m + p/2, 0])
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Int[ExpandTrig[(g*cos[e + f*x])^ p, (d*sin[e + f*x])^n*(a + b*sin[e + f*x])^m, x], x] /; FreeQ[{a, b, d, e, f, g, n, p}, x] && EqQ[a^2 - b^2, 0] && IGtQ[m, 0]
Int[cos[e_. + f_.*x_]^2*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := 1/b^2*Int[(d*Sin[e + f*x])^ n*(a + b*Sin[e + f*x])^(m + 1)*(a - b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && (ILtQ[m, 0] || Not[IGtQ[n, 0]])
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := (a/g)^(2*m)* Int[(g*Cos[e + f*x])^(2*m + p)*(d*Sin[e + f*x])^ n/(a - b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, d, e, f, g, n, p}, x] && EqQ[a^2 - b^2, 0] && ILtQ[m, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := (a/g)^(2*m)* Int[(g*Cos[e + f*x])^(2*m + p)*(d*Sin[e + f*x])^ n/(a - b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, d, e, f, g, n}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[m] && RationalQ[p] && (EqQ[2*m + p, 0] || GtQ[2*m + p, 0] && LtQ[p, -1])
Int[(g_.*cos[e_. + f_.*x_])^p_* sin[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := b*(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^ m/(a*f*g*(2*m + p + 1)) - 1/(a^2*(2*m + p + 1))* Int[(g*Cos[e + f*x])^ p*(a + b*Sin[e + f*x])^(m + 1)*(a*m - b*(2*m + p + 1)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, p}, x] && EqQ[a^2 - b^2, 0] && LeQ[m, -1/2] && NeQ[2*m + p + 1, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_* sin[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := -(g*Cos[e + f*x])^(p + 1)*(a + b*Sin[e + f*x])^(m + 1)/(b*f*g*(m + p + 2)) + 1/(b*(m + p + 2))* Int[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^ m*(b*(m + 1) - a*(p + 1)*Sin[e + f*x]), x] /; FreeQ[{a, b, e, f, g, m, p}, x] && EqQ[a^2 - b^2, 0] && NeQ[m + p + 2, 0]
Int[cos[e_. + f_.*x_]^2*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := 1/b^2*Int[(d*Sin[e + f*x])^ n*(a + b*Sin[e + f*x])^(m + 1)*(a - b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n]
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := -2/(a*b*d)* Int[(d*Sin[e + f*x])^(n + 1)*(a + b*Sin[e + f*x])^(m + 2), x] + 1/a^2* Int[(d*Sin[e + f*x])^ n*(a + b*Sin[e + f*x])^(m + 2)*(1 + Sin[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && LtQ[m, -1]
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := 1/d^4*Int[(d*Sin[e + f*x])^(n + 4)*(a + b*Sin[e + f*x])^m, x] + Int[(d*Sin[e + f*x])^n*(a + b*Sin[e + f*x])^ m*(1 - 2*Sin[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && Not[IGtQ[m, 0]]
Int[cos[e_. + f_.*x_]^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := a^m*Cos[e + f*x]/(f*Sqrt[1 + Sin[e + f*x]]*Sqrt[1 - Sin[e + f*x]])* Subst[ Int[(d*x)^n*(1 + b/a*x)^(m + (p - 1)/2)*(1 - b/a*x)^((p - 1)/2), x], x, Sin[e + f*x]] /; FreeQ[{a, b, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[p/2] && IntegerQ[m]
Int[cos[e_. + f_.*x_]^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Cos[e + f*x]/(a^(p - 2)*f*Sqrt[a + b*Sin[e + f*x]]* Sqrt[a - b*Sin[e + f*x]])* Subst[ Int[(d*x)^n (a + b*x)^(m + p/2 - 1/2)*(a - b*x)^(p/2 - 1/2), x], x, Sin[e + f*x]] /; FreeQ[{a, b, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[p/2] && Not[IntegerQ[m]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Int[ExpandTrig[(g*cos[e + f*x])^ p, (d*sin[e + f*x])^n*(a + b*sin[e + f*x])^m, x], x] /; FreeQ[{a, b, d, e, f, g, n, p}, x] && EqQ[a^2 - b^2, 0] && IGtQ[m, 0] && (IntegerQ[p] || IGtQ[n, 0])
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := a^m*g*(g*Cos[e + f*x])^(p - 1)/(f*(1 + Sin[e + f*x])^((p - 1)/2)*(1 - Sin[e + f*x])^((p - 1)/2))* Subst[ Int[(d*x)^n*(1 + b/a*x)^(m + (p - 1)/2)*(1 - b/a*x)^((p - 1)/2), x], x, Sin[e + f*x]] /; FreeQ[{a, b, d, e, f, n, p}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[m]
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := g*(g*Cos[e + f*x])^(p - 1)/(f*(a + b*Sin[e + f*x])^((p - 1)/2)*(a - b*Sin[e + f*x])^((p - 1)/2))* Subst[ Int[(d*x)^n*(a + b*x)^(m + (p - 1)/2)*(a - b*x)^((p - 1)/2), x], x, Sin[e + f*x]] /; FreeQ[{a, b, d, e, f, m, n, p}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_/ Sqrt[d_.*sin[e_. + f_.*x_]], x_Symbol] := -g*(g*Cos[e + f*x])^(p - 1)* Sqrt[d*Sin[e + f*x]]*(a + b*Sin[e + f*x])^(m + 1)/(a*d* f*(m + 1)) + g^2*(2*m + 3)/(2*a*(m + 1))* Int[(g*Cos[e + f*x])^(p - 2)*(a + b*Sin[e + f*x])^(m + 1)/ Sqrt[d*Sin[e + f*x]], x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && LtQ[m, -1] && EqQ[m + p + 1/2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^m_/ Sqrt[d_.*sin[e_. + f_.*x_]], x_Symbol] := 2*(g*Cos[e + f*x])^(p + 1)* Sqrt[d*Sin[e + f*x]]*(a + b*Sin[e + f*x])^m/(d*f*g*(2*m + 1)) + 2*a*m/(g^2*(2*m + 1))* Int[(g*Cos[e + f*x])^(p + 2)*(a + b*Sin[e + f*x])^(m - 1)/ Sqrt[d*Sin[e + f*x]], x] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0] && GtQ[m, 0] && EqQ[m + p + 3/2, 0]
Int[cos[e_. + f_.*x_]^2*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Int[(d*Sin[e + f*x])^n*(a + b*Sin[e + f*x])^m*(1 - Sin[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f, m, n}, x] && NeQ[a^2 - b^2, 0] && (IGtQ[m, 0] || IntegersQ[2*m, 2*n])
(* Int[cos[e_.+f_.*x_]^4*sin[e_.+f_.*x_]^n_*(a_+b_.*sin[e_.+f_.*x_])^ m_,x_Symbol] :=  (a^2-b^2)*Cos[e+f*x]*Sin[e+f*x]^(n+1)*(a+b*Sin[e+f*x])^(m+1)/(a*b^2*d* (m+1)) - (a^2*(n+1)-b^2*(m+n+2))*Cos[e+f*x]*Sin[e+f*x]^(n+1)*(a+b*Sin[e+f*x]) ^(m+2)/(a^2*b^2*d*(n+1)*(m+1)) + 1/(a^2*b*(n+1)*(m+1))*Int[Sin[e+f*x]^(n+1)*(a+b*Sin[e+f*x])^(m+1)* Simp[a^2*(n+1)*(n+2)-b^2*(m+n+2)*(m+n+3)+a*b*(m+1)*Sin[e+f*x]-(a^ 2*(n+1)*(n+3)-b^2*(m+n+2)*(m+n+4))*Sin[e+f*x]^2,x],x] /;  FreeQ[{a,b,d,e,f},x] && NeQ[a^2-b^2,0] && IntegersQ[2*m,2*n] &&  LtQ[m,-1] && LtQ[n,-1] *)
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Cos[e + f*x]*(d*Sin[e + f*x])^(n + 1)*(a + b*Sin[e + f*x])^(m + 1)/(a*d*f*(n + 1)) - (a^2*(n + 1) - b^2*(m + n + 2))* Cos[e + f*x]*(d*Sin[e + f*x])^(n + 2)*(a + b*Sin[e + f*x])^(m + 1)/(a^2*b*d^2*f*(n + 1)*(m + 1)) + 1/(a^2*b*d*(n + 1)*(m + 1))* Int[(d*Sin[e + f*x])^(n + 1)*(a + b*Sin[e + f*x])^(m + 1)* Simp[a^2*(n + 1)*(n + 2) - b^2*(m + n + 2)*(m + n + 3) + a*b*(m + 1)* Sin[e + f*x] - (a^2*(n + 1)*(n + 3) - b^2*(m + n + 2)*(m + n + 4))*Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n] && LtQ[m, -1] && LtQ[n, -1]
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := (a^2 - b^2)* Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^(n + 1)/(a*b^2*d*f*(m + 1)) + (a^2*(n - m + 1) - b^2*(m + n + 2))* Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 2)*(d*Sin[e + f*x])^(n + 1)/(a^2*b^2*d*f*(m + 1)*(m + 2)) - 1/(a^2*b^2*(m + 1)*(m + 2))* Int[(a + b*Sin[e + f*x])^(m + 2)*(d*Sin[e + f*x])^n* Simp[a^2*(n + 1)*(n + 3) - b^2*(m + n + 2)*(m + n + 3) + a*b*(m + 2)* Sin[e + f*x] - (a^2*(n + 2)*(n + 3) - b^2*(m + n + 2)*(m + n + 4))*Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, n}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n] && LtQ[m, -1] && Not[LtQ[n, -1]] && (LtQ[m, -2] || EqQ[m + n + 4, 0])
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := (a^2 - b^2)* Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^(n + 1)/(a*b^2*d*f*(m + 1)) - Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 2)*(d*Sin[e + f*x])^(n + 1)/(b^2* d*f*(m + n + 4)) - 1/(a*b^2*(m + 1)*(m + n + 4))* Int[(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^n* Simp[a^2*(n + 1)*(n + 3) - b^2*(m + n + 2)*(m + n + 4) + a*b*(m + 1)* Sin[e + f*x] - (a^2*(n + 2)*(n + 3) - b^2*(m + n + 3)*(m + n + 4))*Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, n}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n] && LtQ[m, -1] && Not[LtQ[n, -1]] && NeQ[m + n + 4, 0]
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^(n + 1)/(a*d*f*(n + 1)) - b*(m + n + 2)* Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^(n + 2)/(a^2*d^2*f*(n + 1)*(n + 2)) - 1/(a^2*d^2*(n + 1)*(n + 2))* Int[(a + b*Sin[e + f*x])^m*(d*Sin[e + f*x])^(n + 2)* Simp[a^2*n*(n + 2) - b^2*(m + n + 2)*(m + n + 3) + a*b*m*Sin[ e + f*x] - (a^2*(n + 1)*(n + 2) - b^2*(m + n + 2)*(m + n + 4))*Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, m}, x] && NeQ[a^2 - b^2, 0] && (IGtQ[m, 0] || IntegersQ[2*m, 2*n]) && Not[m < -1] && LtQ[n, -1] && (LtQ[n, -2] || EqQ[m + n + 4, 0])
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^(n + 1)/(a*d*f*(n + 1)) - Cos[e + f*x]*(a + b*Sin[e + f*x])^(m + 1)*(d*Sin[e + f*x])^(n + 2)/(b* d^2*f*(m + n + 4)) + 1/(a*b*d*(n + 1)*(m + n + 4))* Int[(a + b*Sin[e + f*x])^m*(d*Sin[e + f*x])^(n + 1)* Simp[a^2*(n + 1)*(n + 2) - b^2*(m + n + 2)*(m + n + 4) + a*b*(m + 3)* Sin[e + f*x] - (a^2*(n + 1)*(n + 3) - b^2*(m + n + 3)*(m + n + 4))*Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, m}, x] && NeQ[a^2 - b^2, 0] && (IGtQ[m, 0] || IntegersQ[2*m, 2*n]) && Not[m < -1] && LtQ[n, -1] && NeQ[m + n + 4, 0]
Int[cos[e_. + f_.*x_]^4*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := a*(n + 3)* Cos[e + f*x]*(d*Sin[e + f*x])^(n + 1)*(a + b*Sin[e + f*x])^(m + 1)/(b^2*d* f*(m + n + 3)*(m + n + 4)) - Cos[e + f*x]*(d*Sin[e + f*x])^(n + 2)*(a + b*Sin[e + f*x])^(m + 1)/(b* d^2*f*(m + n + 4)) - 1/(b^2*(m + n + 3)*(m + n + 4))* Int[(d*Sin[e + f*x])^n*(a + b*Sin[e + f*x])^m* Simp[a^2*(n + 1)*(n + 3) - b^2*(m + n + 3)*(m + n + 4) + a*b*m*Sin[ e + f*x] - (a^2*(n + 2)*(n + 3) - b^2*(m + n + 3)*(m + n + 5))*Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, m, n}, x] && NeQ[a^2 - b^2, 0] && (IGtQ[m, 0] || IntegersQ[2*m, 2*n]) && Not[m < -1] && Not[LtQ[n, -1]] && NeQ[m + n + 3, 0] && NeQ[m + n + 4, 0]
Int[cos[e_. + f_.*x_]^6*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Cos[e + f*x]*(d*Sin[e + f*x])^(n + 1)*(a + b*Sin[e + f*x])^(m + 1)/(a*d*f*(n + 1)) - b*(m + n + 2)* Cos[e + f*x]*(d*Sin[e + f*x])^(n + 2)*(a + b*Sin[e + f*x])^(m + 1)/(a^2*d^2*f*(n + 1)*(n + 2)) - a*(n + 5)* Cos[e + f*x]*(d*Sin[e + f*x])^(n + 3)*(a + b*Sin[e + f*x])^(m + 1)/(b^2*d^3* f*(m + n + 5)*(m + n + 6)) + Cos[e + f*x]*(d*Sin[e + f*x])^(n + 4)*(a + b*Sin[e + f*x])^(m + 1)/(b* d^4*f*(m + n + 6)) + 1/(a^2*b^2*d^2*(n + 1)*(n + 2)*(m + n + 5)*(m + n + 6))* Int[(d*Sin[e + f*x])^(n + 2)*(a + b*Sin[e + f*x])^m* Simp[a^4*(n + 1)*(n + 2)*(n + 3)*(n + 5) - a^2*b^2*(n + 2)*(2*n + 1)*(m + n + 5)*(m + n + 6) + b^4*(m + n + 2)*(m + n + 3)*(m + n + 5)*(m + n + 6) + a*b*m*(a^2*(n + 1)*(n + 2) - b^2*(m + n + 5)*(m + n + 6))* Sin[e + f*x] - (a^4*(n + 1)*(n + 2)*(4 + n)*(n + 5) + b^4*(m + n + 2)*(m + n + 4)*(m + n + 5)*(m + n + 6) - a^2*b^2*(n + 1)*(n + 2)*(m + n + 5)*(2*n + 2*m + 13))* Sin[e + f*x]^2, x], x] /; FreeQ[{a, b, d, e, f, m, n}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n] && NeQ[n, -1] && NeQ[n, -2] && NeQ[m + n + 5, 0] && NeQ[m + n + 6, 0] && Not[IGtQ[m, 0]]
Int[cos[e_. + f_.*x_]^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Int[ExpandTrig[(d*sin[e + f*x])^n*(a + b*sin[e + f*x])^ m*(1 - sin[e + f*x]^2)^(p/2), x], x] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[m, 2*n, p/2] && (LtQ[m, -1] || EqQ[m, -1] && GtQ[p, 0])
Int[(g_.*cos[e_. + f_.*x_])^p_* sin[e_. + f_.*x_]^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := Int[ExpandTrig[(g*cos[e + f*x])^p, sin[e + f*x]^n/(a + b*sin[e + f*x]), x], x] /; FreeQ[{a, b, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && IntegerQ[n] && (LtQ[n, 0] || IGtQ[p + 1/2, 0])
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := g^2/a*Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^n, x] - b*g^2/(a^2*d)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^(n + 1), x] - g^2*(a^2 - b^2)/(a^2*d^2)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^(n + 2)/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && GtQ[p, 1] && (LeQ[n, -2] || EqQ[n, -3/2] && EqQ[p, 3/2])
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := g^2/(a*b)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^ n*(b - a*Sin[e + f*x]), x] + g^2*(a^2 - b^2)/(a*b*d)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^(n + 1)/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && GtQ[p, 1] && (LtQ[n, -1] || EqQ[p, 3/2] && EqQ[n, -1/2])
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := g^2/b^2*Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^ n*(a - b*Sin[e + f*x]), x] - g^2*(a^2 - b^2)/b^2* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^ n/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && GtQ[p, 1]
(* Int[(g_.*cos[e_.+f_.*x_])^p_*(d_.*sin[e_.+f_.*x_])^n_/(a_+b_.*sin[ e_.+f_.*x_]),x_Symbol] :=  g^2*Int[(g*Cos[e+f*x])^(p-2)*(d*Sin[e+f*x])^n/(a+b*Sin[e+f*x]),x] - g^2/d^2*Int[(g*Cos[e+f*x])^(p-2)*(d*Sin[e+f*x])^(n+2)/(a+b*Sin[e+f* x]),x] /; FreeQ[{a,b,d,e,f,g},x] && NeQ[a^2-b^2,0] &&  IntegersQ[2*n,2*p] && GtQ[p,1] *)
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := a*d^2/(a^2 - b^2)* Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^(n - 2), x] - b*d/(a^2 - b^2)* Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^(n - 1), x] - a^2*d^2/(g^2*(a^2 - b^2))* Int[(g*Cos[e + f*x])^(p + 2)*(d*Sin[e + f*x])^(n - 2)/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && LtQ[p, -1] && GtQ[n, 1]
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := -d/(a^2 - b^2)* Int[(g*Cos[e + f*x])^ p*(d*Sin[e + f*x])^(n - 1)*(b - a*Sin[e + f*x]), x] + a*b*d/(g^2*(a^2 - b^2))* Int[(g*Cos[e + f*x])^(p + 2)*(d*Sin[e + f*x])^(n - 1)/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && LtQ[p, -1] && GtQ[n, 0]
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := 1/(a^2 - b^2)* Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^n*(a - b*Sin[e + f*x]), x] - b^2/(g^2*(a^2 - b^2))* Int[(g*Cos[e + f*x])^(p + 2)*(d*Sin[e + f*x])^ n/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && LtQ[p, -1]
Int[Sqrt[g_.* cos[e_. + f_.*x_]]/(Sqrt[ sin[e_. + f_.*x_]]*(a_ + b_.*sin[e_. + f_.*x_])), x_Symbol] := -4*Sqrt[2]*g/f* Subst[Int[x^2/(((a + b)*g^2 + (a - b)*x^4)*Sqrt[1 - x^4/g^2]), x], x, Sqrt[g*Cos[e + f*x]]/Sqrt[1 + Sin[e + f*x]]] /; FreeQ[{a, b, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[Sqrt[g_.* cos[e_. + f_.*x_]]/(Sqrt[ d_*sin[e_. + f_.*x_]]*(a_ + b_.*sin[e_. + f_.*x_])), x_Symbol] := Sqrt[Sin[e + f*x]]/Sqrt[d*Sin[e + f*x]]* Int[Sqrt[g*Cos[e + f*x]]/(Sqrt[Sin[e + f*x]]*(a + b*Sin[e + f*x])), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[Sqrt[d_.* sin[e_. + f_.*x_]]/(Sqrt[ cos[e_. + f_.*x_]]*(a_ + b_.*sin[e_. + f_.*x_])), x_Symbol] := With[{q = Rt[-a^2 + b^2, 2]}, 2*Sqrt[2]*d*(b + q)/(f*q)* Subst[Int[1/((d*(b + q) + a*x^2)*Sqrt[1 - x^4/d^2]), x], x, Sqrt[d*Sin[e + f*x]]/Sqrt[1 + Cos[e + f*x]]] - 2*Sqrt[2]*d*(b - q)/(f*q)* Subst[Int[1/((d*(b - q) + a*x^2)*Sqrt[1 - x^4/d^2]), x], x, Sqrt[d*Sin[e + f*x]]/Sqrt[1 + Cos[e + f*x]]]] /; FreeQ[{a, b, d, e, f}, x] && NeQ[a^2 - b^2, 0]
Int[Sqrt[d_.* sin[e_. + f_.*x_]]/(Sqrt[ g_.*cos[e_. + f_.*x_]]*(a_ + b_.*sin[e_. + f_.*x_])), x_Symbol] := Sqrt[Cos[e + f*x]]/Sqrt[g*Cos[e + f*x]]* Int[Sqrt[d*Sin[e + f*x]]/(Sqrt[Cos[e + f*x]]*(a + b*Sin[e + f*x])), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := d/b*Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^(n - 1), x] - a*d/b* Int[(g*Cos[e + f*x])^ p*(d*Sin[e + f*x])^(n - 1)/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && LtQ[-1, p, 1] && GtQ[n, 0]
Int[(g_.*cos[e_. + f_.*x_])^ p_*(d_.*sin[e_. + f_.*x_])^n_/(a_ + b_.*sin[e_. + f_.*x_]), x_Symbol] := 1/a*Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^n, x] - b/(a*d)* Int[(g*Cos[e + f*x])^ p*(d*Sin[e + f*x])^(n + 1)/(a + b*Sin[e + f*x]), x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*n, 2*p] && LtQ[-1, p, 1] && LtQ[n, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^2, x_Symbol] := 2*a*b/d*Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^(n + 1), x] + Int[(g*Cos[e + f*x])^p*(d*Sin[e + f*x])^ n*(a^2 + b^2*Sin[e + f*x]^2), x] /; FreeQ[{a, b, d, e, f, g, n, p}, x] && NeQ[a^2 - b^2, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := Int[ExpandTrig[(g*cos[e + f*x])^ p, (d*sin[e + f*x])^n*(a + b*sin[e + f*x])^m, x], x] /; FreeQ[{a, b, d, e, f, g, n, p}, x] && NeQ[a^2 - b^2, 0] && IntegerQ[m] && (GtQ[m, 0] || IntegerQ[n])
Int[(g_.*cos[e_. + f_.*x_])^p_*(d_.*sin[e_. + f_.*x_])^ n_*(a_ + b_.*sin[e_. + f_.*x_])^m_, x_Symbol] := g^2/a*Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^ n*(a + b*Sin[e + f*x])^(m + 1), x] - b*g^2/(a^2*d)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^(n + 1)*(a + b*Sin[e + f*x])^(m + 1), x] - g^2*(a^2 - b^2)/(a^2*d^2)* Int[(g*Cos[e + f*x])^(p - 2)*(d*Sin[e + f*x])^(n + 2)*(a + b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, d, e, f, g}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[m, 2*n, 2*p] && LtQ[m, 0] && GtQ[p, 1] && (LeQ[n, -2] || EqQ[m, -1] && EqQ[n, -3/2] && EqQ[p, 3/2])
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := a^(2*m)*Int[(c + d*Sin[e + f*x])^n/(a - b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, c, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && IntegersQ[m, p] && EqQ[2*m + p, 0]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := (a/g)^(2*m)* Int[(g*Cos[e + f*x])^(2*m + p)*(c + d*Sin[e + f*x])^ n/(a - b*Sin[e + f*x])^m, x] /; FreeQ[{a, b, c, d, e, f, g, n}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[m] && (EqQ[2*m + p, 0] || GtQ[2*m + p, 0] && LtQ[p, -1])
Int[cos[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := 1/b^2*Int[(a + b*Sin[e + f*x])^(m + 1)*(c + d*Sin[e + f*x])^ n*(a - b*Sin[e + f*x]), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n]
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := a^m*Cos[e + f*x]/(f*Sqrt[1 + Sin[e + f*x]]*Sqrt[1 - Sin[e + f*x]])* Subst[ Int[(1 + b/a*x)^(m + (p - 1)/2)*(1 - b/a*x)^((p - 1)/2)*(c + d*x)^ n, x], x, Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, n}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[p/2] && IntegerQ[m]
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := Cos[e + f*x]/(a^(p - 2)*f*Sqrt[a + b*Sin[e + f*x]]* Sqrt[a - b*Sin[e + f*x]])* Subst[ Int[(a + b*x)^(m + p/2 - 1/2)*(a - b*x)^(p/2 - 1/2)*(c + d*x)^n, x], x, Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[p/2] && Not[IntegerQ[m]]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := Int[ExpandTrig[(g*cos[e + f*x])^ p, (a + b*sin[e + f*x])^m*(c + d*sin[e + f*x])^n, x], x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && EqQ[a^2 - b^2, 0] && IGtQ[m, 0] && (IntegerQ[p] || IGtQ[n, 0])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := a^m*g*(g*Cos[e + f*x])^(p - 1)/(f*(1 + Sin[e + f*x])^((p - 1)/2)*(1 - Sin[e + f*x])^((p - 1)/2))* Subst[ Int[(1 + b/a*x)^(m + (p - 1)/2)*(1 - b/a*x)^((p - 1)/2)*(c + d*x)^ n, x], x, Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, n, p}, x] && EqQ[a^2 - b^2, 0] && IntegerQ[m]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := g*(g*Cos[e + f*x])^(p - 1)/(f*(a + b*Sin[e + f*x])^((p - 1)/2)*(a - b*Sin[e + f*x])^((p - 1)/2))* Subst[ Int[(a + b*x)^(m + (p - 1)/2)*(a - b*x)^((p - 1)/2)*(c + d*x)^n, x], x, Sin[e + f*x]] /; FreeQ[{a, b, c, d, e, f, m, n, p}, x] && EqQ[a^2 - b^2, 0] && Not[IntegerQ[m]]
Int[cos[e_. + f_.*x_]^2*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := Int[(a + b*Sin[e + f*x])^m*(c + d*Sin[e + f*x])^ n*(1 - Sin[e + f*x]^2), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && NeQ[a^2 - b^2, 0] && (IGtQ[m, 0] || IntegersQ[2*m, 2*n])
Int[cos[e_. + f_.*x_]^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := Int[ExpandTrig[(a + b*sin[e + f*x])^m*(c + d*sin[e + f*x])^ n*(1 - sin[e + f*x]^2)^(p/2), x], x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && NeQ[a^2 - b^2, 0] && IGtQ[p/2, 0] && (IGtQ[m, 0] || IntegersQ[2*m, 2*n])
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_*(c_ + d_.*sin[e_. + f_.*x_])^n_, x_Symbol] := Int[ExpandTrig[(g*cos[e + f*x])^p*(a + b*sin[e + f*x])^ m*(c + d*sin[e + f*x])^n, x], x] /; FreeQ[{a, b, c, d, e, f, g, p}, x] && NeQ[a^2 - b^2, 0] && IntegersQ[2*m, 2*n]
Int[(g_.*cos[e_. + f_.*x_])^p_*(a_ + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := Unintegrable[(g*Cos[e + f*x])^p*(a + b*Sin[e + f*x])^ m*(c + d*Sin[e + f*x])^n, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && NeQ[a^2 - b^2, 0]
Int[(g_.*sec[e_. + f_.*x_])^p_*(a_. + b_.*sin[e_. + f_.*x_])^ m_.*(c_. + d_.*sin[e_. + f_.*x_])^n_., x_Symbol] := g^(2*IntPart[p])*(g*Cos[e + f*x])^FracPart[p]*(g*Sec[e + f*x])^ FracPart[p]* Int[(a + b*Sin[e + f*x])^ m*(c + d*Sin[e + f*x])^n/(g*Cos[e + f*x])^p, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && Not[IntegerQ[p]]
Int[(g_.*csc[e_. + f_.*x_])^p_*(a_. + b_.*cos[e_. + f_.*x_])^ m_.*(c_. + d_.*cos[e_. + f_.*x_])^n_., x_Symbol] := g^(2*IntPart[p])*(g*Sin[e + f*x])^FracPart[p]*(g*Csc[e + f*x])^ FracPart[p]* Int[(a + b*Cos[e + f*x])^ m*(c + d*Cos[e + f*x])^n/(g*Sin[e + f*x])^p, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p}, x] && Not[IntegerQ[p]]
