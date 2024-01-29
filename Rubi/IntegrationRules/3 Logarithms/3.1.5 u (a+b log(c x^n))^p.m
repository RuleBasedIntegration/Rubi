
(* ::Subsection::Closed:: *)
(* 3.1.5 u (a+b log(c x^n))^p *)
Int[(A_. + B_.*Log[c_.*(d_. + e_.*x_)^n_.])/ Sqrt[a_ + b_.*Log[c_.*(d_. + e_.*x_)^n_.]], x_Symbol] := B*(d + e*x)*Sqrt[a + b*Log[c*(d + e*x)^n]]/(b*e) + (2*A*b - B*(2*a + b*n))/(2*b)* Int[1/Sqrt[a + b*Log[c*(d + e*x)^n]], x] /; FreeQ[{a, b, c, d, e, A, B, n}, x]
Int[x_^m_.*(d_ + e_./x_)^q_.*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Int[(e + d*x)^q*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[m, q] && IntegerQ[q]
Int[x_^m_.*(d_ + e_.*x_^r_.)^q_.*Log[c_.*x_^n_.], x_Symbol] := With[{u = IntHide[x^m*(d + e*x^r)^q, x]}, Dist[Log[c*x^n], u, x] - n*Int[SimplifyIntegrand[u/x, x], x]] /; FreeQ[{c, d, e, n, r}, x] && IGtQ[q, 0] && IntegerQ[m] && Not[EqQ[q, 1] && EqQ[m, -1]]
Int[x_^m_.*(d_ + e_.*x_^r_.)^q_.*(a_ + b_.*Log[c_.*x_^n_.]), x_Symbol] := With[{u = IntHide[x^m*(d + e*x^r)^q, x]}, u*(a + b*Log[c*x^n]) - b*n*Int[SimplifyIntegrand[u/x, x], x]] /; FreeQ[{a, b, c, d, e, n, r}, x] && IGtQ[q, 0] && IntegerQ[m] && Not[EqQ[q, 1] && EqQ[m, -1]]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_.)^q_*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := (f*x)^(m + 1)*(d + e*x^r)^(q + 1)*(a + b*Log[c*x^n])/(d* f*(m + 1)) - b*n/(d*(m + 1))*Int[(f*x)^m*(d + e*x^r)^(q + 1), x] /; FreeQ[{a, b, c, d, e, f, m, n, q, r}, x] && EqQ[m + r*(q + 1) + 1, 0] && NeQ[m, -1]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_)^q_.*(a_. + b_.*Log[c_.*x_^n_])^p_., x_Symbol] := f^m/n*Subst[Int[(d + e*x)^q*(a + b*Log[c*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, e, f, m, n, q, r}, x] && EqQ[m, r - 1] && IGtQ[p, 0] && (IntegerQ[m] || GtQ[f, 0]) && EqQ[r, n]
Int[(f_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^p_./(d_ + e_.*x_^r_), x_Symbol] := f^m*Log[1 + e*x^r/d]*(a + b*Log[c*x^n])^p/(e*r) - b*f^m*n*p/(e*r)* Int[Log[1 + e*x^r/d]*(a + b*Log[c*x^n])^(p - 1)/x, x] /; FreeQ[{a, b, c, d, e, f, m, n, r}, x] && EqQ[m, r - 1] && IGtQ[p, 0] && (IntegerQ[m] || GtQ[f, 0]) && NeQ[r, n]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_)^q_.*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := f^m*(d + e*x^r)^(q + 1)*(a + b*Log[c*x^n])^p/(e*r*(q + 1)) - b*f^m*n*p/(e*r*(q + 1))* Int[(d + e*x^r)^(q + 1)*(a + b*Log[c*x^n])^(p - 1)/x, x] /; FreeQ[{a, b, c, d, e, f, m, n, q, r}, x] && EqQ[m, r - 1] && IGtQ[p, 0] && (IntegerQ[m] || GtQ[f, 0]) && NeQ[r, n] && NeQ[q, -1]
Int[(f_*x_)^m_.*(d_ + e_.*x_^r_)^q_.*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := (f*x)^m/x^m*Int[x^m*(d + e*x^r)^q*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, f, m, n, q, r}, x] && EqQ[m, r - 1] && IGtQ[p, 0] && Not[(IntegerQ[m] || GtQ[f, 0])]
Int[(f_.*x_)^m_.*(d_ + e_.*x_)^q_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := (f*x)^m*(d + e*x)^(q + 1)*(a + b*Log[c*x^n])/(e*(q + 1)) - f/(e*(q + 1))* Int[(f*x)^(m - 1)*(d + e*x)^(q + 1)*(a*m + b*n + b*m*Log[c*x^n]), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && ILtQ[q, -1] && GtQ[m, 0]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^2)^q_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := -(f*x)^(m + 1)*(d + e*x^2)^(q + 1)*(a + b*Log[c*x^n])/(2*d* f*(q + 1)) + 1/(2*d*(q + 1))* Int[(f*x)^ m*(d + e*x^2)^(q + 1)*(a*(m + 2*q + 3) + b*n + b*(m + 2*q + 3)*Log[c*x^n]), x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && ILtQ[q, -1] && ILtQ[m, 0]
Int[x_^m_.*(d_ + e_.*x_^2)^q_*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := d^IntPart[q]*(d + e*x^2)^FracPart[q]/(1 + e/d*x^2)^FracPart[q]* Int[x^m*(1 + e/d*x^2)^q*(a + b*Log[c*x^n]), x] /; FreeQ[{a, b, c, d, e, n}, x] && IntegerQ[m/2] && IntegerQ[q - 1/2] && Not[LtQ[m + 2*q, -2] || GtQ[d, 0]]
Int[x_^m_.*(d1_ + e1_.*x_)^q_*(d2_ + e2_.*x_)^ q_*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := (d1 + e1*x)^q*(d2 + e2*x)^q/(1 + e1*e2/(d1*d2)*x^2)^q* Int[x^m*(1 + e1*e2/(d1*d2)*x^2)^q*(a + b*Log[c*x^n]), x] /; FreeQ[{a, b, c, d1, e1, d2, e2, n}, x] && EqQ[d2*e1 + d1*e2, 0] && IntegerQ[m] && IntegerQ[q - 1/2]
Int[(a_. + b_.*Log[c_.*x_^n_])/(x_*(d_ + e_.*x_^r_.)), x_Symbol] := 1/n*Subst[Int[(a + b*Log[c*x])/(x*(d + e*x^(r/n))), x], x, x^n] /; FreeQ[{a, b, c, d, e, n, r}, x] && IntegerQ[r/n]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_./(x_*(d_ + e_.*x_)), x_Symbol] := 1/d*Int[(a + b*Log[c*x^n])^p/x, x] - e/d*Int[(a + b*Log[c*x^n])^p/(d + e*x), x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[p, 0]
(* Int[(a_.+b_.*Log[c_.*x_^n_.])^p_./(x_*(d_+e_.*x_^r_.)),x_Symbol] := (r*Log[x]-Log[1+(e*x^r)/d])*(a+b*Log[c*x^n])^p/(d*r) - b*n*p/d*Int[Log[x]*(a+b*Log[c*x^n])^(p-1)/x,x] + b*n*p/(d*r)*Int[Log[1+(e*x^r)/d]*(a+b*Log[c*x^n])^(p-1)/x,x] /; FreeQ[{a,b,c,d,e,n,r},x] && IGtQ[p,0] *)
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_./(x_*(d_ + e_.*x_^r_.)), x_Symbol] := -Log[1 + d/(e*x^r)]*(a + b*Log[c*x^n])^p/(d*r) + b*n*p/(d*r)* Int[Log[1 + d/(e*x^r)]*(a + b*Log[c*x^n])^(p - 1)/x, x] /; FreeQ[{a, b, c, d, e, n, r}, x] && IGtQ[p, 0]
Int[(d_ + e_.*x_)^q_.*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := d*Int[(d + e*x)^(q - 1)*(a + b*Log[c*x^n])^p/x, x] + e*Int[(d + e*x)^(q - 1)*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[p, 0] && GtQ[q, 0] && IntegerQ[2*q]
Int[(d_ + e_.*x_)^q_*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := 1/d*Int[(d + e*x)^(q + 1)*(a + b*Log[c*x^n])^p/x, x] - e/d*Int[(d + e*x)^q*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, n}, x] && IGtQ[p, 0] && LtQ[q, -1] && IntegerQ[2*q]
Int[(d_ + e_.*x_^r_.)^q_.*(a_. + b_.*Log[c_.*x_^n_.])/x_, x_Symbol] := With[{u = IntHide[(d + e*x^r)^q/x, x]}, u*(a + b*Log[c*x^n]) - b*n*Int[Dist[1/x, u, x], x]] /; FreeQ[{a, b, c, d, e, n, r}, x] && IntegerQ[q - 1/2]
Int[(d_ + e_.*x_^r_.)^q_*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := 1/d*Int[(d + e*x^r)^(q + 1)*(a + b*Log[c*x^n])^p/x, x] - e/d*Int[x^(r - 1)*(d + e*x^r)^q*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, n, r}, x] && IGtQ[p, 0] && ILtQ[q, -1]
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_.)^q_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := With[{u = IntHide[(f*x)^m*(d + e*x^r)^q, x]}, Dist[(a + b*Log[c*x^n]), u, x] - b*n*Int[SimplifyIntegrand[u/x, x], x] /; (EqQ[r, 1] || EqQ[r, 2]) && IntegerQ[m] && IntegerQ[q - 1/2] || InverseFunctionFreeQ[u, x]] /; FreeQ[{a, b, c, d, e, f, m, n, q, r}, x] && IntegerQ[2*q] && (IntegerQ[m] && IntegerQ[r] || IGtQ[q, 0])
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_.)^q_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := With[{u = ExpandIntegrand[(a + b*Log[c*x^n]), (f*x)^m*(d + e*x^r)^q, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, d, e, f, m, n, q, r}, x] && IntegerQ[q] && (GtQ[q, 0] || IntegerQ[m] && IntegerQ[r])
Int[x_^m_.*(d_ + e_.*x_^r_.)^q_.*(a_. + b_.*Log[c_.*x_^n_])^p_., x_Symbol] := 1/n*Subst[ Int[x^(Simplify[(m + 1)/n] - 1)*(d + e*x^(r/n))^ q*(a + b*Log[c*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, e, m, n, p, q, r}, x] && IntegerQ[q] && IntegerQ[r/n] && IntegerQ[Simplify[(m + 1)/n]] && (GtQ[(m + 1)/n, 0] || IGtQ[p, 0])
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_.)^q_.*(a_. + b_.*Log[c_.*x_^n_.])^ p_., x_Symbol] := With[{u = ExpandIntegrand[(a + b*Log[c*x^n])^p, (f*x)^m*(d + e*x^r)^q, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, d, e, f, m, n, p, q, r}, x] && IntegerQ[ q] && (GtQ[q, 0] || IGtQ[p, 0] && IntegerQ[m] && IntegerQ[r])
Int[(f_.*x_)^m_.*(d_ + e_.*x_^r_.)^q_.*(a_. + b_.*Log[c_.*x_^n_.])^ p_., x_Symbol] := Unintegrable[(f*x)^m*(d + e*x^r)^q*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, f, m, n, p, q, r}, x]
Int[(f_.*x_)^m_.*u_^q_.*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Int[(f*x)^m*ExpandToSum[u, x]^q*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, f, m, n, p, q}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[Polyx_*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Int[ExpandIntegrand[Polyx*(a + b*Log[c*x^n])^p, x], x] /; FreeQ[{a, b, c, n, p}, x] && PolynomialQ[Polyx, x]
Int[RFx_*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := With[{u = ExpandIntegrand[(a + b*Log[c*x^n])^p, RFx, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, n}, x] && RationalFunctionQ[RFx, x] && IGtQ[p, 0]
Int[RFx_*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := With[{u = ExpandIntegrand[RFx*(a + b*Log[c*x^n])^p, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, n}, x] && RationalFunctionQ[RFx, x] && IGtQ[p, 0]
Int[AFx_*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[AFx*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, n, p}, x] && AlgebraicFunctionQ[AFx, x, True]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_.*(d_ + e_.*Log[c_.*x_^n_.])^q_., x_Symbol] := Int[ExpandIntegrand[(a + b*Log[c*x^n])^p*(d + e*Log[c*x^n])^q, x], x] /; FreeQ[{a, b, c, d, e, n}, x] && IntegerQ[p] && IntegerQ[q]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_.*(d_. + e_.*Log[f_.*x_^r_.]), x_Symbol] := With[{u = IntHide[(a + b*Log[c*x^n])^p, x]}, Dist[d + e*Log[f*x^r], u, x] - e*r*Int[SimplifyIntegrand[u/x, x], x]] /; FreeQ[{a, b, c, d, e, f, n, p, r}, x]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_.*(d_. + e_.*Log[f_.*x_^r_.])^q_., x_Symbol] := x*(a + b*Log[c*x^n])^p*(d + e*Log[f*x^r])^q - e*q*r*Int[(a + b*Log[c*x^n])^p*(d + e*Log[f*x^r])^(q - 1), x] - b*n*p*Int[(a + b*Log[c*x^n])^(p - 1)*(d + e*Log[f*x^r])^q, x] /; FreeQ[{a, b, c, d, e, f, n, r}, x] && IGtQ[p, 0] && IGtQ[q, 0]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_.*(d_. + e_.*Log[f_.*x_^r_.])^q_., x_Symbol] := Unintegrable[(a + b*Log[c*x^n])^p*(d + e*Log[f*x^r])^q, x] /; FreeQ[{a, b, c, d, e, f, n, p, q, r}, x]
Int[(a_. + b_.*Log[v_])^p_.*(c_. + d_.*Log[v_])^q_., x_Symbol] := 1/Coeff[v, x, 1]* Subst[Int[(a + b*Log[x])^p*(c + d*Log[x])^q, x], x, v] /; FreeQ[{a, b, c, d, p, q}, x] && LinearQ[v, x] && NeQ[Coeff[v, x, 0], 0]
Int[(a_. + b_.*Log[c_.*x_^n_.])^p_.*(d_. + e_.*Log[c_.*x_^n_.])^q_./ x_, x_Symbol] := 1/n*Subst[Int[(a + b*x)^p*(d + e*x)^q, x], x, Log[c*x^n]] /; FreeQ[{a, b, c, d, e, n, p, q}, x]
Int[(g_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^ p_.*(d_. + e_.*Log[f_.*x_^r_.]), x_Symbol] := With[{u = IntHide[(g*x)^m*(a + b*Log[c*x^n])^p, x]}, Dist[(d + e*Log[f*x^r]), u, x] - e*r*Int[SimplifyIntegrand[u/x, x], x]] /; FreeQ[{a, b, c, d, e, f, g, m, n, p, r}, x] && Not[EqQ[p, 1] && EqQ[a, 0] && NeQ[d, 0]]
Int[(g_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^ p_.*(d_. + e_.*Log[f_.*x_^r_.])^q_., x_Symbol] := (g*x)^(m + 1)*(a + b*Log[c*x^n])^ p*(d + e*Log[f*x^r])^q/(g*(m + 1)) - e*q*r/(m + 1)* Int[(g*x)^m*(a + b*Log[c*x^n])^p*(d + e*Log[f*x^r])^(q - 1), x] - b*n*p/(m + 1)* Int[(g*x)^m*(a + b*Log[c*x^n])^(p - 1)*(d + e*Log[f*x^r])^q, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, r}, x] && IGtQ[p, 0] && IGtQ[q, 0] && NeQ[m, -1]
Int[(g_.*x_)^m_.*(a_. + b_.*Log[c_.*x_^n_.])^ p_.*(d_. + e_.*Log[f_.*x_^r_.])^q_., x_Symbol] := Unintegrable[(g*x)^m*(a + b*Log[c*x^n])^p*(d + e*Log[f*x^r])^q, x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p, q, r}, x]
Int[u_^m_.*(a_. + b_.*Log[v_])^p_.*(c_. + d_.*Log[v_])^q_., x_Symbol] := With[{e = Coeff[u, x, 0], f = Coeff[u, x, 1], g = Coeff[v, x, 0], h = Coeff[v, x, 1]}, 1/h* Subst[Int[(f*x/h)^m*(a + b*Log[x])^p*(c + d*Log[x])^q, x], x, v] /; EqQ[f*g - e*h, 0] && NeQ[g, 0]] /; FreeQ[{a, b, c, d, m, p, q}, x] && LinearQ[{u, v}, x]
Int[Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := With[{u = IntHide[Log[d*(e + f*x^m)^r], x]}, Dist[(a + b*Log[c*x^n])^p, u, x] - b*n*p*Int[Dist[(a + b*Log[c*x^n])^(p - 1)/x, u, x], x]] /; FreeQ[{a, b, c, d, e, f, r, m, n}, x] && IGtQ[p, 0] && RationalQ[ m] && (EqQ[p, 1] || FractionQ[m] && IntegerQ[1/m] || EqQ[r, 1] && EqQ[m, 1] && EqQ[d*e, 1])
Int[Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := With[{u = IntHide[(a + b*Log[c*x^n])^p, x]}, Dist[Log[d*(e + f*x^m)^r], u, x] - f*m*r*Int[Dist[x^(m - 1)/(e + f*x^m), u, x], x]] /; FreeQ[{a, b, c, d, e, f, r, m, n}, x] && IGtQ[p, 0] && IntegerQ[m]
Int[Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[Log[d*(e + f*x^m)^r]*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, f, r, m, n, p}, x]
Int[Log[d_.*u_^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Int[Log[d*ExpandToSum[u, x]^r]*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, r, n, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[Log[d_.*(e_ + f_.*x_^m_.)]*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := -PolyLog[2, -d*f*x^m]*(a + b*Log[c*x^n])^p/m + b*n*p/m* Int[PolyLog[2, -d*f*x^m]*(a + b*Log[c*x^n])^(p - 1)/x, x] /; FreeQ[{a, b, c, d, e, f, m, n}, x] && IGtQ[p, 0] && EqQ[d*e, 1]
Int[Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := Log[d*(e + f*x^m)^r]*(a + b*Log[c*x^n])^(p + 1)/(b*n*(p + 1)) - f*m*r/(b*n*(p + 1))* Int[x^(m - 1)*(a + b*Log[c*x^n])^(p + 1)/(e + f*x^m), x] /; FreeQ[{a, b, c, d, e, f, r, m, n}, x] && IGtQ[p, 0] && NeQ[d*e, 1]
Int[(g_.*x_)^q_.* Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := With[{u = IntHide[(g*x)^q*Log[d*(e + f*x^m)^r], x]}, Dist[(a + b*Log[c*x^n]), u, x] - b*n*Int[Dist[1/x, u, x], x]] /; FreeQ[{a, b, c, d, e, f, g, r, m, n, q}, x] && (IntegerQ[(q + 1)/m] || RationalQ[m] && RationalQ[q]) && NeQ[q, -1]
Int[(g_.*x_)^q_.* Log[d_.*(e_ + f_.*x_^m_.)]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := With[{u = IntHide[(g*x)^q*Log[d*(e + f*x^m)], x]}, Dist[(a + b*Log[c*x^n])^p, u, x] - b*n*p*Int[Dist[(a + b*Log[c*x^n])^(p - 1)/x, u, x], x]] /; FreeQ[{a, b, c, d, e, f, g, m, n, q}, x] && IGtQ[p, 0] && RationalQ[m] && RationalQ[q] && NeQ[q, -1] && (EqQ[p, 1] || FractionQ[m] && IntegerQ[(q + 1)/m] || IGtQ[q, 0] && IntegerQ[(q + 1)/m] && EqQ[d*e, 1])
Int[(g_.*x_)^q_.* Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := With[{u = IntHide[(g*x)^q*(a + b*Log[c*x^n])^p, x]}, Dist[Log[d*(e + f*x^m)^r], u, x] - f*m*r*Int[Dist[x^(m - 1)/(e + f*x^m), u, x], x]] /; FreeQ[{a, b, c, d, e, f, g, r, m, n, q}, x] && IGtQ[p, 0] && RationalQ[m] && RationalQ[q]
Int[(g_.*x_)^q_.* Log[d_.*(e_ + f_.*x_^m_.)^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[(g*x)^q*Log[d*(e + f*x^m)^r]*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, f, g, r, m, n, p, q}, x]
Int[(g_.*x_)^q_.*Log[d_.*u_^r_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Int[(g*x)^q*Log[d*ExpandToSum[u, x]^r]*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, g, r, n, p, q}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[PolyLog[k_, e_.*x_^q_.]*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := -b*n*x*PolyLog[k, e*x^q] + x*PolyLog[k, e*x^q]*(a + b*Log[c*x^n]) + b*n*q*Int[PolyLog[k - 1, e*x^q], x] - q*Int[PolyLog[k - 1, e*x^q]*(a + b*Log[c*x^n]), x] /; FreeQ[{a, b, c, e, n, q}, x] && IGtQ[k, 0]
Int[PolyLog[k_, e_.*x_^q_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[PolyLog[k, e*x^q]*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, e, n, p, q}, x]
Int[PolyLog[k_, e_.*x_^q_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := PolyLog[k + 1, e*x^q]*(a + b*Log[c*x^n])^p/q - b*n*p/q*Int[PolyLog[k + 1, e*x^q]*(a + b*Log[c*x^n])^(p - 1)/x, x] /; FreeQ[{a, b, c, e, k, n, q}, x] && GtQ[p, 0]
Int[PolyLog[k_, e_.*x_^q_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_./x_, x_Symbol] := PolyLog[k, e*x^q]*(a + b*Log[c*x^n])^(p + 1)/(b*n*(p + 1)) - q/(b*n*(p + 1))* Int[PolyLog[k - 1, e*x^q]*(a + b*Log[c*x^n])^(p + 1)/x, x] /; FreeQ[{a, b, c, e, k, n, q}, x] && LtQ[p, -1]
Int[(d_.*x_)^m_.*PolyLog[k_, e_.*x_^q_.]*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := -b*n*(d*x)^(m + 1)*PolyLog[k, e*x^q]/(d*(m + 1)^2) + (d*x)^(m + 1)* PolyLog[k, e*x^q]*(a + b*Log[c*x^n])/(d*(m + 1)) + b*n*q/(m + 1)^2*Int[(d*x)^m*PolyLog[k - 1, e*x^q], x] - q/(m + 1)* Int[(d*x)^m*PolyLog[k - 1, e*x^q]*(a + b*Log[c*x^n]), x] /; FreeQ[{a, b, c, d, e, m, n, q}, x] && IGtQ[k, 0]
Int[(d_.*x_)^m_.* PolyLog[k_, e_.*x_^q_.]*(a_. + b_.*Log[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[(d*x)^m*PolyLog[k, e*x^q]*(a + b*Log[c*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p, q}, x]
Int[Px_.*F_[d_.*(e_. + f_.*x_)]^m_.*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := With[{u = IntHide[Px*F[d*(e + f*x)]^m, x]}, Dist[(a + b*Log[c*x^n]), u, x] - b*n*Int[Dist[1/x, u, x], x]] /; FreeQ[{a, b, c, d, e, f, n}, x] && PolynomialQ[Px, x] && IGtQ[m, 0] && MemberQ[{ArcSin, ArcCos, ArcSinh, ArcCosh}, F]
Int[Px_.*F_[d_.*(e_. + f_.*x_)]*(a_. + b_.*Log[c_.*x_^n_.]), x_Symbol] := With[{u = IntHide[Px*F[d*(e + f*x)], x]}, Dist[(a + b*Log[c*x^n]), u, x] - b*n*Int[Dist[1/x, u, x], x]] /; FreeQ[{a, b, c, d, e, f, n}, x] && PolynomialQ[Px, x] && MemberQ[{ArcTan, ArcCot, ArcTanh, ArcCoth}, F]
