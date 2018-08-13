
(* ::Subsection::Closed:: *)
(* 3.3 u (a+b log(c (d+e x^m)^n))^p *)
Int[Pq_^m_.*Log[u_], x_Symbol] := With[{C = FullSimplify[Pq^m*(1 - u)/D[u, x]]}, C*PolyLog[2, 1 - u] /; FreeQ[C, x]] /; IntegerQ[m] && PolyQ[Pq, x] && RationalFunctionQ[u, x] && LeQ[RationalFunctionExponents[u, x][[2]], Expon[Pq, x]]
Int[Log[c_.*(d_ + e_.*x_^n_)^p_.], x_Symbol] := x*Log[c*(d + e*x^n)^p] - e*n*p*Int[x^n/(d + e*x^n), x] /; FreeQ[{c, d, e, n, p}, x]
Int[(a_. + b_.*Log[c_.*(d_ + e_./x_)^p_.])^q_, x_Symbol] := (e + d*x)*(a + b*Log[c*(d + e/x)^p])^q/d + b*e*p*q/d*Int[(a + b*Log[c*(d + e/x)^p])^(q - 1)/x, x] /; FreeQ[{a, b, c, d, e, p}, x] && IGtQ[q, 0]
Int[(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_, x_Symbol] := x*(a + b*Log[c*(d + e*x^n)^p])^q - b*e*n*p*q* Int[x^n*(a + b*Log[c*(d + e*x^n)^p])^(q - 1)/(d + e*x^n), x] /; FreeQ[{a, b, c, d, e, n, p}, x] && IGtQ[q, 0] && (EqQ[q, 1] || IntegerQ[n])
(* Int[(a_.+b_.*Log[c_.*(d_+e_.*x_^n_)^p_.])^q_,x_Symbol] :=  With[{k=Denominator[n]}, k*Subst[Int[x^(k-1)*(a+b*Log[c*(d+e*x^(k*n))^p])^q,x],x,x^(1/k)]] /;  FreeQ[{a,b,c,d,e,p,q},x] && LtQ[-1,n,1] && (GtQ[n,0] || IGtQ[q,0]) *)
Int[(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_, x_Symbol] := With[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*Log[c*(d + e*x^(k*n))^p])^q, x], x, x^(1/k)]] /; FreeQ[{a, b, c, d, e, p, q}, x] && FractionQ[n]
Int[(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_, x_Symbol] := Unintegrable[(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, n, p, q}, x]
Int[(a_. + b_.*Log[c_.*v_^p_.])^q_., x_Symbol] := Int[(a + b*Log[c*ExpandToSum[v, x]^p])^q, x] /; FreeQ[{a, b, c, p, q}, x] && BinomialQ[v, x] && Not[BinomialMatchQ[v, x]]
Int[x_^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := 1/n*Subst[ Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*Log[c*(d + e*x)^p])^q, x], x, x^n] /; FreeQ[{a, b, c, d, e, m, n, p, q}, x] && IntegerQ[ Simplify[(m + 1)/n]] && (GtQ[(m + 1)/n, 0] || IGtQ[q, 0]) && Not[EqQ[q, 1] && ILtQ[n, 0] && IGtQ[m, 0]]
Int[(f_.*x_)^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.]), x_Symbol] := (f*x)^(m + 1)*(a + b*Log[c*(d + e*x^n)^p])/(f*(m + 1)) - b*e*n*p/(f*(m + 1))*Int[x^(n - 1)*(f*x)^(m + 1)/(d + e*x^n), x] /; FreeQ[{a, b, c, d, e, f, m, n, p}, x] && NeQ[m, -1]
Int[(f_*x_)^m_*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := (f*x)^m/x^m* Int[x^m*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, m, n, p, q}, x] && IntegerQ[Simplify[(m + 1)/n]] && (GtQ[(m + 1)/n, 0] || IGtQ[q, 0])
Int[(f_.*x_)^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_, x_Symbol] := (f*x)^(m + 1)*(a + b*Log[c*(d + e*x^n)^p])^ q/(f*(m + 1)) - b*e*n*p*q/(f^n*(m + 1))* Int[(f*x)^(m + n)*(a + b*Log[c*(d + e*x^n)^p])^(q - 1)/(d + e*x^n), x] /; FreeQ[{a, b, c, d, e, f, m, p}, x] && IGtQ[q, 1] && IntegerQ[n] && NeQ[m, -1]
Int[x_^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_, x_Symbol] := With[{k = Denominator[n]}, k*Subst[ Int[x^(k*(m + 1) - 1)*(a + b*Log[c*(d + e*x^(k*n))^p])^q, x], x, x^(1/k)]] /; FreeQ[{a, b, c, d, e, m, p, q}, x] && FractionQ[n]
Int[(f_*x_)^m_*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := (f*x)^m/x^m* Int[x^m*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, m, p, q}, x] && FractionQ[n]
Int[(f_.*x_)^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := Unintegrable[(f*x)^m*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, m, n, p, q}, x]
Int[(f_.*x_)^m_.*(a_. + b_.*Log[c_.*v_^p_.])^q_., x_Symbol] := Int[(f*x)^m*(a + b*Log[c*ExpandToSum[v, x]^p])^q, x] /; FreeQ[{a, b, c, f, m, p, q}, x] && BinomialQ[v, x] && Not[BinomialMatchQ[v, x]]
Int[(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])/(f_. + g_.*x_), x_Symbol] := Log[f + g*x]*(a + b*Log[c*(d + e*x^n)^p])/g - b*e*n*p/g*Int[x^(n - 1)*Log[f + g*x]/(d + e*x^n), x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && RationalQ[n]
Int[(f_. + g_.*x_)^r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.]), x_Symbol] := (f + g*x)^(r + 1)*(a + b*Log[c*(d + e*x^n)^p])/(g*(r + 1)) - b*e*n*p/(g*(r + 1))* Int[x^(n - 1)*(f + g*x)^(r + 1)/(d + e*x^n), x] /; FreeQ[{a, b, c, d, e, f, g, n, p, r}, x] && (IGtQ[r, 0] || RationalQ[n]) && NeQ[r, -1]
Int[(f_. + g_.*x_)^r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := Unintegrable[(f + g*x)^r*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, g, n, p, q, r}, x]
Int[u_^r_.*(a_. + b_.*Log[c_.*v_^p_.])^q_., x_Symbol] := Int[ExpandToSum[u, x]^r*(a + b*Log[c*ExpandToSum[v, x]^p])^q, x] /; FreeQ[{a, b, c, p, q, r}, x] && LinearQ[u, x] && BinomialQ[v, x] && Not[LinearMatchQ[u, x] && BinomialMatchQ[v, x]]
Int[x_^m_.*(f_. + g_.*x_)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := Int[ExpandIntegrand[(a + b*Log[c*(d + e*x^n)^p])^q, x^m*(f + g*x)^r, x], x] /; FreeQ[{a, b, c, d, e, f, g, n, p, q}, x] && IntegerQ[m] && IntegerQ[r]
Int[(h_.*x_)^m_*(f_. + g_.*x_)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_.)^p_.])^q_., x_Symbol] := With[{k = Denominator[m]}, k/h*Subst[ Int[x^(k*(m + 1) - 1)*(f + g*x^k/h)^ r*(a + b*Log[c*(d + e*x^(k*n)/h^n)^p])^q, x], x, (h*x)^(1/k)]] /; FreeQ[{a, b, c, d, e, f, g, h, p, r}, x] && FractionQ[m] && IntegerQ[n] && IntegerQ[r]
Int[(h_.*x_)^m_.*(f_. + g_.*x_)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := Unintegrable[(h*x)^m*(f + g*x)^r*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, m, n, p, q, r}, x]
Int[(h_.*x_)^m_.*u_^r_.*(a_. + b_.*Log[c_.*v_^p_.])^q_., x_Symbol] := Int[(h*x)^m*ExpandToSum[u, x]^r*(a + b*Log[c*ExpandToSum[v, x]^p])^q, x] /; FreeQ[{a, b, c, h, m, p, q, r}, x] && LinearQ[u, x] && BinomialQ[v, x] && Not[LinearMatchQ[u, x] && BinomialMatchQ[v, x]]
Int[(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])/(f_ + g_.*x_^2), x_Symbol] := With[{u = IntHide[1/(f + g*x^2), x]}, u*(a + b*Log[c*(d + e*x^n)^p]) - b*e*n*p*Int[u*x^(n - 1)/(d + e*x^n), x]] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && IntegerQ[n]
Int[(f_ + g_.*x_^s_)^r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^ q_., x_Symbol] := With[{t = ExpandIntegrand[(a + b*Log[c*(d + e*x^n)^p])^q, (f + g*x^s)^r, x]}, Int[t, x] /; SumQ[t]] /; FreeQ[{a, b, c, d, e, f, g, n, p, q, r, s}, x] && IntegerQ[n] && IGtQ[q, 0] && IntegerQ[r] && IntegerQ[s] && (EqQ[q, 1] || GtQ[r, 0] && GtQ[s, 1] || LtQ[s, 0] && LtQ[r, 0])
Int[(f_ + g_.*x_^s_)^r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^ q_., x_Symbol] := With[{k = Denominator[n]}, k*Subst[ Int[x^(k - 1)*(f + g*x^(k*s))^ r*(a + b*Log[c*(d + e*x^(k*n))^p])^q, x], x, x^(1/k)] /; IntegerQ[k*s]] /; FreeQ[{a, b, c, d, e, f, g, n, p, q, r, s}, x] && FractionQ[n]
Int[(f_ + g_.*x_^s_)^r_. (a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^ q_., x_Symbol] := Unintegrable[(f + g*x^s)^r*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, g, n, p, q, r, s}, x]
Int[u_^r_.*(a_. + b_.*Log[c_.*v_^p_.])^q_., x_Symbol] := Int[ExpandToSum[u, x]^r*(a + b*Log[c*ExpandToSum[v, x]^p])^q, x] /; FreeQ[{a, b, c, p, q, r}, x] && BinomialQ[{u, v}, x] && Not[BinomialMatchQ[{u, v}, x]]
Int[x_^m_.*(f_ + g_.*x_^s_)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := 1/n*Subst[ Int[x^(Simplify[(m + 1)/n] - 1)*(f + g*x^(s/n))^ r*(a + b*Log[c*(d + e*x)^p])^q, x], x, x^n] /; FreeQ[{a, b, c, d, e, f, g, m, n, p, q, r, s}, x] && IntegerQ[r] && IntegerQ[s/n] && IntegerQ[Simplify[(m + 1)/n]] && (GtQ[(m + 1)/n, 0] || IGtQ[q, 0])
Int[x_^m_.*(f_ + g_.*x_^s_)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := Int[ExpandIntegrand[(a + b*Log[c*(d + e*x^n)^p])^q, x^m*(f + g*x^s)^r, x], x] /; FreeQ[{a, b, c, d, e, f, g, m, n, p, q, r, s}, x] && IGtQ[q, 0] && IntegerQ[m] && IntegerQ[r] && IntegerQ[s]
Int[(f_ + g_.*x_^s_)^r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^ q_., x_Symbol] := With[{k = Denominator[n]}, k*Subst[ Int[x^(k - 1)*(f + g*x^(k*s))^ r*(a + b*Log[c*(d + e*x^(k*n))^p])^q, x], x, x^(1/k)] /; IntegerQ[k*s]] /; FreeQ[{a, b, c, d, e, f, g, n, p, q, r, s}, x] && FractionQ[n]
Int[x_^m_.*(f_ + g_.*x_^s_)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := 1/n*Subst[ Int[x^(m + 1/n - 1)*(f + g*x^(s/n))^r*(a + b*Log[c*(d + e*x)^p])^ q, x], x, x^n] /; FreeQ[{a, b, c, d, e, f, g, m, n, p, q, r, s}, x] && FractionQ[n] && IntegerQ[1/n] && IntegerQ[s/n]
Int[(h_.*x_)^m_*(f_. + g_.*x_^s_.)^ r_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_.)^p_.])^q_., x_Symbol] := With[{k = Denominator[m]}, k/h*Subst[ Int[x^(k*(m + 1) - 1)*(f + g*x^(k*s)/h^s)^ r*(a + b*Log[c*(d + e*x^(k*n)/h^n)^p])^q, x], x, (h*x)^(1/k)]] /; FreeQ[{a, b, c, d, e, f, g, h, p, r}, x] && FractionQ[m] && IntegerQ[n] && IntegerQ[s]
Int[(h_.*x_)^m_.*(f_ + g_.*x_^s_)^ r_. (a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])^q_., x_Symbol] := Unintegrable[(h*x)^m*(f + g*x^s)^r*(a + b*Log[c*(d + e*x^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, g, h, m, n, p, q, r, s}, x]
Int[(h_.*x_)^m_.*u_^r_.*(a_. + b_.*Log[c_.*v_^p_.])^q_., x_Symbol] := Int[(h*x)^m*ExpandToSum[u, x]^r*(a + b*Log[c*ExpandToSum[v, x]^p])^q, x] /; FreeQ[{a, b, c, h, m, p, q, r}, x] && BinomialQ[{u, v}, x] && Not[BinomialMatchQ[{u, v}, x]]
Int[Log[f_.*x_^q_.]^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.])/x_, x_Symbol] := Log[f*x^q]^(m + 1)*(a + b*Log[c*(d + e*x^n)^p])/(q*(m + 1)) - b*e*n*p/(q*(m + 1))* Int[x^(n - 1)*Log[f*x^q]^(m + 1)/(d + e*x^n), x] /; FreeQ[{a, b, c, d, e, f, m, n, p, q}, x] && NeQ[m, -1]
Int[F_[f_.*x_]^m_.*(a_. + b_.*Log[c_.*(d_ + e_.*x_^n_)^p_.]), x_Symbol] := With[{u = IntHide[F[f*x]^m, x]}, Dist[a + b*Log[c*(d + e*x^n)^p], u, x] - b*e*n*p*Int[SimplifyIntegrand[u*x^(n - 1)/(d + e*x^n), x], x]] /; FreeQ[{a, b, c, d, e, f, p}, x] && MemberQ[{ArcSin, ArcCos, ArcSinh, ArcCosh}, F] && IGtQ[m, 0] && IGtQ[n, 1]
Int[(a_. + b_.*Log[c_.*(d_ + e_.*(f_. + g_.*x_)^n_)^p_.])^q_., x_Symbol] := 1/g*Subst[Int[(a + b*Log[c*(d + e*x^n)^p])^q, x], x, f + g*x] /; FreeQ[{a, b, c, d, e, f, g, n, p}, x] && IGtQ[q, 0] && (EqQ[q, 1] || IntegerQ[n])
Int[(a_. + b_.*Log[c_.*(d_ + e_.*(f_. + g_.*x_)^n_)^p_.])^q_., x_Symbol] := Unintegrable[(a + b*Log[c*(d + e*(f + g*x)^n)^p])^q, x] /; FreeQ[{a, b, c, d, e, f, g, n, p, q}, x]
