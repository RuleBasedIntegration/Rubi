
(* ::Section:: *)
(* 9.1 Integrand simplification rules *)

(* ::Subsection::Closed:: *)
(* 9.1 Integrand simplification rules *)
Int[(u_.)*((a_) + (b_.)*(x_)^(n_.))^(p_.), x_Symbol] := Int[u*(b*x^n)^p, x] /; FreeQ[{a, b, n, p}, x] && EqQ[a, 0]
Int[(u_.)*((a_.) + (b_.)*(x_)^(n_.))^(p_.), x_Symbol] := Int[u*a^p, x] /; FreeQ[{a, b, n, p}, x] && EqQ[b, 0]
Int[(u_.)*((a_) + (b_.)*(x_)^(n_.) + (c_.)*(x_)^(j_.))^(p_.), x_Symbol] := Int[u*(b*x^n + c*x^(2*n))^p, x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[j, 2*n] && EqQ[a, 0]
Int[(u_.)*((a_.) + (b_.)*(x_)^(n_.) + (c_.)*(x_)^(j_.))^(p_.), x_Symbol] := Int[u*(a + c*x^(2*n))^p, x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[j, 2*n] && EqQ[b, 0]
Int[(u_.)*((a_.) + (b_.)*(x_)^(n_.) + (c_.)*(x_)^(j_.))^(p_.), x_Symbol] := Int[u*(a + b*x^n)^p, x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[j, 2*n] && EqQ[c, 0]
Int[(u_.)*((a_.)*(v_) + (b_.)*(v_) + (w_.))^(p_.), x_Symbol] := Int[u*((a + b)*v + w)^p, x] /; FreeQ[{a, b}, x] &&  !FreeQ[v, x]
Int[(u_.)*(Pm_)^(p_), x_Symbol] := Int[u*Pm^Simplify[p], x] /; PolyQ[Pm, x] &&  !RationalQ[p] && FreeQ[p, x] && RationalQ[Simplify[p]]
Int[a_, x_Symbol] := a*x /; FreeQ[a, x]
Int[(a_)*((b_) + (c_.)*(x_)), x_Symbol] := a*((b + c*x)^2/(2*c)) /; FreeQ[{a, b, c}, x]
Int[-(u_), x_Symbol] := Identity[-1]*Int[u, x]
Int[(Complex[0, a_])*(u_), x_Symbol] := (Complex[Identity[0], a])*Int[u, x] /; FreeQ[a, x] && EqQ[a^2, 1]
Int[(a_)*(u_), x_Symbol] := a*Int[u, x] /; FreeQ[a, x] &&  !MatchQ[u, (b_)*(v_) /; FreeQ[b, x]]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := ShowStep["", "Int[a*u + b*v + ⋯,x]", "a*Integrate[u,x] + b*Integrate[v,x] + ⋯", Hold[IntSum[u, x]]] /; SimplifyFlag && SumQ[u], Int[u_, x_Symbol] := IntSum[u, x] /; SumQ[u]]
Int[((c_.)*(x_))^(m_.)*(u_), x_Symbol] := Int[ExpandIntegrand[(c*x)^m*u, x], x] /; FreeQ[{c, m}, x] && SumQ[u] &&  !LinearQ[u, x] &&  !MatchQ[u, (a_) + (b_.)*(v_) /; FreeQ[{a, b}, x] && InverseFunctionQ[v]]
Int[(u_.)*((a_.)*(x_)^(n_))^(m_), x_Symbol] := a^IntPart[m]*((a*x^n)^FracPart[m]/x^(n*FracPart[m]))*Int[u*x^(m*n), x] /; FreeQ[{a, m, n}, x] &&  !IntegerQ[m]
Int[(u_.)*(v_)^(m_.)*((b_)*(v_))^(n_), x_Symbol] := (1/b^m)*Int[u*(b*v)^(m + n), x] /; FreeQ[{b, n}, x] && IntegerQ[m]
Int[(u_.)*((a_.)*(v_))^(m_)*((b_.)*(v_))^(n_), x_Symbol] := a^(m + 1/2)*b^(n - 1/2)*(Sqrt[b*v]/Sqrt[a*v])*Int[u*v^(m + n), x] /; FreeQ[{a, b, m}, x] &&  !IntegerQ[m] && IGtQ[n + 1/2, 0] && IntegerQ[m + n]
Int[(u_.)*((a_.)*(v_))^(m_)*((b_.)*(v_))^(n_), x_Symbol] := a^(m - 1/2)*b^(n + 1/2)*(Sqrt[a*v]/Sqrt[b*v])*Int[u*v^(m + n), x] /; FreeQ[{a, b, m}, x] &&  !IntegerQ[m] && ILtQ[n - 1/2, 0] && IntegerQ[m + n]
Int[(u_.)*((a_.)*(v_))^(m_)*((b_.)*(v_))^(n_), x_Symbol] := a^(m + n)*((b*v)^n/(a*v)^n)*Int[u*v^(m + n), x] /; FreeQ[{a, b, m, n}, x] &&  !IntegerQ[m] &&  !IntegerQ[n] && IntegerQ[m + n]
Int[(u_.)*((a_.)*(v_))^(m_)*((b_.)*(v_))^(n_), x_Symbol] := b^IntPart[n]*((b*v)^FracPart[n]/(a^IntPart[n]*(a*v)^FracPart[n]))*Int[u*(a*v)^(m + n), x] /; FreeQ[{a, b, m, n}, x] &&  !IntegerQ[m] &&  !IntegerQ[n] &&  !IntegerQ[m + n]
Int[(u_.)*((a_) + (b_.)*(v_))^(m_.)*((c_) + (d_.)*(v_))^(n_.), x_Symbol] := (b/d)^m*Int[u*(c + d*v)^(m + n), x] /; FreeQ[{a, b, c, d, n}, x] && EqQ[b*c - a*d, 0] && IntegerQ[m] && ( !IntegerQ[n] || SimplerQ[c + d*x, a + b*x])
Int[(u_.)*((a_) + (b_.)*(v_))^(m_)*((c_) + (d_.)*(v_))^(n_), x_Symbol] := (b/d)^m*Int[u*(c + d*v)^(m + n), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[b*c - a*d, 0] && GtQ[b/d, 0] &&  !(IntegerQ[m] || IntegerQ[n])
Int[(u_.)*((a_) + (b_.)*(v_))^(m_)*((c_) + (d_.)*(v_))^(n_), x_Symbol] := ((a + b*v)^m/(c + d*v)^m)*Int[u*(c + d*v)^(m + n), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[b*c - a*d, 0] &&  !(IntegerQ[m] || IntegerQ[n] || GtQ[b/d, 0])
Int[(u_.)*((a_.)*(v_))^(m_)*((b_.)*(v_) + (c_.)*(v_)^2), x_Symbol] := (1/a)*Int[u*(a*v)^(m + 1)*(b + c*v), x] /; FreeQ[{a, b, c}, x] && LeQ[m, -1]
Int[(u_.)*((a_) + (b_.)*(v_))^(m_)*((A_.) + (B_.)*(v_) + (C_.)*(v_)^2), x_Symbol] := (1/b^2)*Int[u*(a + b*v)^(m + 1)*Simp[b*B - a*C + b*C*v, x], x] /; FreeQ[{a, b, A, B, C}, x] && EqQ[A*b^2 - a*b*B + a^2*C, 0] && LeQ[m, -1]
Int[(u_.)*((a_) + (b_.)*(x_)^(n_.))^(m_.)*((c_) + (d_.)*(x_)^(q_.))^(p_.), x_Symbol] := (d/a)^p*Int[u*((a + b*x^n)^(m + p)/x^(n*p)), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[q, -n] && IntegerQ[p] && EqQ[a*c - b*d, 0] &&  !(IntegerQ[m] && NegQ[n])
Int[(u_.)*((a_) + (b_.)*(x_)^(n_.))^(m_.)*((c_) + (d_.)*(x_)^(j_))^(p_.), x_Symbol] := (-(b^2/d))^m*Int[u/(a - b*x^n)^m, x] /; FreeQ[{a, b, c, d, m, n, p}, x] && EqQ[j, 2*n] && EqQ[p, -m] && EqQ[b^2*c + a^2*d, 0] && GtQ[a, 0] && LtQ[d, 0]
Int[(u_.)*((a_) + (b_.)*(x_) + (c_.)*(x_)^2)^(p_.), x_Symbol] := Int[u*Cancel[(b/2 + c*x)^(2*p)/c^p], x] /; FreeQ[{a, b, c}, x] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[(u_.)*((a_) + (b_.)*(x_)^(n_) + (c_.)*(x_)^(n2_.))^(p_.), x_Symbol] := (1/c^p)*Int[u*(b/2 + c*x^n)^(2*p), x] /; FreeQ[{a, b, c, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[(Pp_)/(Qq_), x_Symbol] := With[{p = Expon[Pp, x], q = Expon[Qq, x]}, Coeff[Pp, x, p]*(Log[RemoveContent[Qq, x]]/(q*Coeff[Qq, x, q])) /; EqQ[p, q - 1] && EqQ[Pp, Simplify[(Coeff[Pp, x, p]/(q*Coeff[Qq, x, q]))*D[Qq, x]]]] /; PolyQ[Pp, x] && PolyQ[Qq, x]
Int[(Pp_)*(Qq_)^(m_.), x_Symbol] := With[{p = Expon[Pp, x], q = Expon[Qq, x]}, Coeff[Pp, x, p]*x^(p - q + 1)*(Qq^(m + 1)/((p + m*q + 1)*Coeff[Qq, x, q])) /; NeQ[p + m*q + 1, 0] && EqQ[(p + m*q + 1)*Coeff[Qq, x, q]*Pp, Coeff[Pp, x, p]*x^(p - q)*((p - q + 1)*Qq + (m + 1)*x*D[Qq, x])]] /; FreeQ[m, x] && PolyQ[Pp, x] && PolyQ[Qq, x] && NeQ[m, -1]
Int[(x_)^(m_.)*((a1_) + (b1_.)*(x_)^(n_.))^(p_)*((a2_) + (b2_.)*(x_)^(n_.))^(p_), x_Symbol] := (a1 + b1*x^n)^(p + 1)*((a2 + b2*x^n)^(p + 1)/(2*b1*b2*n*(p + 1))) /; FreeQ[{a1, b1, a2, b2, m, n, p}, x] && EqQ[a2*b1 + a1*b2, 0] && EqQ[m - 2*n + 1, 0] && NeQ[p, -1]
Int[(Pp_)*(Qq_)^(m_.)*(Rr_)^(n_.), x_Symbol] := With[{p = Expon[Pp, x], q = Expon[Qq, x], r = Expon[Rr, x]}, Coeff[Pp, x, p]*x^(p - q - r + 1)*Qq^(m + 1)*(Rr^(n + 1)/((p + m*q + n*r + 1)*Coeff[Qq, x, q]*Coeff[Rr, x, r])) /; NeQ[p + m*q + n*r + 1, 0] && EqQ[(p + m*q + n*r + 1)*Coeff[Qq, x, q]*Coeff[Rr, x, r]*Pp, Coeff[Pp, x, p]*x^(p - q - r)*((p - q - r + 1)*Qq*Rr + (m + 1)*x*Rr*D[Qq, x] + (n + 1)*x*Qq*D[Rr, x])]] /; FreeQ[{m, n}, x] && PolyQ[Pp, x] && PolyQ[Qq, x] && PolyQ[Rr, x] && NeQ[m, -1] && NeQ[n, -1]
Int[(Qr_)*((a_.) + (b_.)*(Pq_)^(n_.))^(p_.), x_Symbol] := With[{q = Expon[Pq, x], r = Expon[Qr, x]}, (Coeff[Qr, x, r]/(q*Coeff[Pq, x, q]))*Subst[Int[(a + b*x^n)^p, x], x, Pq] /; EqQ[r, q - 1] && EqQ[Coeff[Qr, x, r]*D[Pq, x], q*Coeff[Pq, x, q]*Qr]] /; FreeQ[{a, b, n, p}, x] && PolyQ[Pq, x] && PolyQ[Qr, x]
Int[(Qr_)*((a_.) + (b_.)*(Pq_)^(n_.) + (c_.)*(Pq_)^(n2_.))^(p_.), x_Symbol] := Module[{q = Expon[Pq, x], r = Expon[Qr, x]}, (Coeff[Qr, x, r]/(q*Coeff[Pq, x, q]))*Subst[Int[(a + b*x^n + c*x^(2*n))^p, x], x, Pq] /; EqQ[r, q - 1] && EqQ[Coeff[Qr, x, r]*D[Pq, x], q*Coeff[Pq, x, q]*Qr]] /; FreeQ[{a, b, c, n, p}, x] && EqQ[n2, 2*n] && PolyQ[Pq, x] && PolyQ[Qr, x]
Int[(u_.)*((a_.)*(x_)^(p_.) + (b_.)*(x_)^(q_.))^(m_.), x_Symbol] := Int[u*x^(m*p)*(a + b*x^(q - p))^m, x] /; FreeQ[{a, b, p, q}, x] && IntegerQ[m] && PosQ[q - p]
Int[(u_.)*((a_.)*(x_)^(p_.) + (b_.)*(x_)^(q_.) + (c_.)*(x_)^(r_.))^(m_.), x_Symbol] := Int[u*x^(m*p)*(a + b*x^(q - p) + c*x^(r - p))^m, x] /; FreeQ[{a, b, c, p, q, r}, x] && IntegerQ[m] && PosQ[q - p] && PosQ[r - p]
Int[(P_)^(p_.)*(Q_)^(q_.), x_Symbol] := Int[PolynomialQuotient[P, Q, x]^p, x] /; FreeQ[{p, q}, x] && PolyQ[P, x] && PolyQ[Q, x] && EqQ[p + q, 0] && EqQ[PolynomialRemainder[P, Q, x], 0] && IntegerQ[p]
Int[(u_.)*(P_)^(p_)*(Q_)^(q_), x_Symbol] := Module[{gcd = PolyGCD[P, Q, x]}, Int[u*gcd^(p + q)*PolynomialQuotient[P, gcd, x]^p*PolynomialQuotient[Q, gcd, x]^q, x] /; NeQ[gcd, 1]] /; IGtQ[p, 0] && ILtQ[q, 0] && PolyQ[P, x] && PolyQ[Q, x]
Int[(u_.)*(P_)*(Q_)^(q_), x_Symbol] := Module[{gcd = PolyGCD[P, Q, x]}, Int[u*gcd^(q + 1)*PolynomialQuotient[P, gcd, x]*PolynomialQuotient[Q, gcd, x]^q, x] /; NeQ[gcd, 1]] /; ILtQ[q, 0] && PolyQ[P, x] && PolyQ[Q, x]