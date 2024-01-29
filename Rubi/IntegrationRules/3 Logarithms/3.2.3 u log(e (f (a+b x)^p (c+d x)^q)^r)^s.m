
(* ::Subsection::Closed:: *)
(* 3.2.3 u log(e (f (a+b x)^p (c+d x)^q)^r)^s *)
Int[u_.*Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := Int[u*Log[e*(b^p*f/d^p*(c + d*x)^(p + q))^r]^s, x] /; FreeQ[{a, b, c, d, e, f, p, q, r, s}, x] && EqQ[b*c - a*d, 0] && IntegerQ[p]
Int[Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := (a + b*x)*Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^s/b - r*s*(p + q)* Int[Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s - 1), x] + q*r*s*(b*c - a*d)/b* Int[Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s - 1)/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f, p, q, r, s}, x] && NeQ[b*c - a*d, 0] && NeQ[p + q, 0] && IGtQ[s, 0] && LtQ[s, 4]
Int[Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]/(g_. + h_.*x_), x_Symbol] := Log[g + h*x]*Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]/h - b*p*r/h*Int[Log[g + h*x]/(a + b*x), x] - d*q*r/h*Int[Log[g + h*x]/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, p, q, r}, x] && NeQ[b*c - a*d, 0]
Int[(g_. + h_.*x_)^m_.* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.], x_Symbol] := (g + h*x)^(m + 1)* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]/(h*(m + 1)) - b*p*r/(h*(m + 1))*Int[(g + h*x)^(m + 1)/(a + b*x), x] - d*q*r/(h*(m + 1))*Int[(g + h*x)^(m + 1)/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, m, p, q, r}, x] && NeQ[b*c - a*d, 0] && NeQ[m, -1]
Int[Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^2/(g_. + h_.*x_), x_Symbol] := Int[(Log[(a + b*x)^(p*r)] + Log[(c + d*x)^(q*r)])^2/(g + h*x), x] + (Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r] - Log[(a + b*x)^(p*r)] - Log[(c + d*x)^(q*r)])* (2*Int[Log[(c + d*x)^(q*r)]/(g + h*x), x] + Int[(Log[(a + b*x)^(p*r)] - Log[(c + d*x)^(q*r)] + Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r])/(g + h*x), x]) /; FreeQ[{a, b, c, d, e, f, g, h, p, q, r}, x] && NeQ[b*c - a*d, 0] && EqQ[b*g - a*h, 0]
(* Int[Log[e_.*(f_.*(a_.+b_.*x_)^p_.*(c_.+d_.*x_)^q_.)^r_.]^2/(g_.+h_. *x_),x_Symbol] := Int[(Log[(a+b*x)^(p*r)]+Log[(c+d*x)^(q*r)])^2/(g+h*x),x] + (Log[e*(f*(a+b*x)^p*(c+d*x)^q)^r]-Log[(a+b*x)^(p*r)]-Log[(c+d*x)^(q* r)])* Int[(Log[(a+b*x)^(p*r)]+Log[(c+d*x)^(q*r)]+Log[e*(f*(a+b*x)^p*(c+ d*x)^q)^r])/(g+h*x),x] /; FreeQ[{a,b,c,d,e,f,g,h,p,q,r},x] && NeQ[b*c-a*d,0] && EqQ[b*g-a*h,0] *)
Int[Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^2/(g_. + h_.*x_), x_Symbol] := Log[g + h*x]*Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^2/h - 2*b*p*r/h* Int[Log[g + h*x]*Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]/(a + b*x), x] - 2*d*q*r/h* Int[Log[g + h*x]*Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, p, q, r}, x] && NeQ[b*c - a*d, 0]
Int[(g_. + h_.*x_)^m_.* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_, x_Symbol] := (g + h*x)^(m + 1)* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^s/(h*(m + 1)) - b*p*r*s/(h*(m + 1))* Int[(g + h*x)^(m + 1)* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s - 1)/(a + b*x), x] - d*q*r*s/(h*(m + 1))* Int[(g + h*x)^(m + 1)* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s - 1)/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, m, p, q, r, s}, x] && NeQ[b*c - a*d, 0] && IGtQ[s, 0] && NeQ[m, -1]
Int[(s_. + t_.*Log[i_.*(g_. + h_.*x_)^n_.])^m_.* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]/(j_. + k_.*x_), x_Symbol] := (s + t*Log[i*(g + h*x)^n])^(m + 1)* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]/(k*n*t*(m + 1)) - b*p*r/(k*n*t*(m + 1))* Int[(s + t*Log[i*(g + h*x)^n])^(m + 1)/(a + b*x), x] - d*q*r/(k*n*t*(m + 1))* Int[(s + t*Log[i*(g + h*x)^n])^(m + 1)/(c + d*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, i, j, k, s, t, m, n, p, q, r}, x] && NeQ[b*c - a*d, 0] && EqQ[h*j - g*k, 0] && IGtQ[m, 0]
Int[(s_. + t_.*Log[i_.*(g_. + h_.*x_)^n_.])* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]/(j_. + k_.*x_), x_Symbol] := (Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r] - Log[(a + b*x)^(p*r)] - Log[(c + d*x)^(q*r)])* Int[(s + t*Log[i*(g + h*x)^n])/(j + k*x), x] + Int[(Log[(a + b*x)^(p*r)]*(s + t*Log[i*(g + h*x)^n]))/(j + k*x), x] + Int[(Log[(c + d*x)^(q*r)]*(s + t*Log[i*(g + h*x)^n]))/(j + k*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, i, j, k, s, t, n, p, q, r}, x] && NeQ[b*c - a*d, 0]
Int[(s_. + t_.*Log[i_.*(g_. + h_.*x_)^n_.])^m_.* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^ u_./(j_. + k_.*x_), x_Symbol] := Unintegrable[(s + t*Log[i*(g + h*x)^n])^m* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^u/(j + k*x), x] /; FreeQ[{a, b, c, d, e, f, g, h, i, j, k, s, t, m, n, p, q, r, u}, x] && NeQ[b*c - a*d, 0]
Int[u_*Log[v_]* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := With[{g = Simplify[(v - 1)*(c + d*x)/(a + b*x)], h = Simplify[u*(a + b*x)*(c + d*x)]}, -h*PolyLog[2, 1 - v]* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^s/(b*c - a*d) + h*p*r*s* Int[PolyLog[2, 1 - v]* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s - 1)/((a + b*x)*(c + d*x)), x] /; FreeQ[{g, h}, x]] /; FreeQ[{a, b, c, d, e, f, p, q, r, s}, x] && NeQ[b*c - a*d, 0] && IGtQ[s, 0] && EqQ[p + q, 0]
Int[v_*Log[i_.*(j_.*(g_. + h_.*x_)^t_.)^u_.]* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := With[{k = Simplify[v*(a + b*x)*(c + d*x)]}, k*Log[i*(j*(g + h*x)^t)^u]* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s + 1)/(p* r*(s + 1)*(b*c - a*d)) - k*h*t*u/(p*r*(s + 1)*(b*c - a*d))* Int[Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s + 1)/(g + h*x), x] /; FreeQ[k, x]] /; FreeQ[{a, b, c, d, e, f, g, h, i, j, p, q, r, s, t, u}, x] && NeQ[b*c - a*d, 0] && EqQ[p + q, 0] && NeQ[s, -1]
Int[u_*PolyLog[n_, v_]* Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := With[{g = Simplify[v*(c + d*x)/(a + b*x)], h = Simplify[u*(a + b*x)*(c + d*x)]}, h*PolyLog[n + 1, v]* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^s/(b*c - a*d) - h*p*r*s* Int[PolyLog[n + 1, v]* Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^(s - 1)/((a + b*x)*(c + d*x)), x] /; FreeQ[{g, h}, x]] /; FreeQ[{a, b, c, d, e, f, n, p, q, r, s}, x] && NeQ[b*c - a*d, 0] && IGtQ[s, 0] && EqQ[p + q, 0]
Int[(a_. + b_.*Log[c_.*Sqrt[d_. + e_.*x_]/Sqrt[f_. + g_.*x_]])^ n_./(A_. + B_.*x_ + C_.*x_^2), x_Symbol] := 2*e*g/(C*(e*f - d*g))* Subst[Int[(a + b*Log[c*x])^n/x, x], x, Sqrt[d + e*x]/Sqrt[f + g*x]] /; FreeQ[{a, b, c, d, e, f, g, A, B, C, n}, x] && EqQ[C*d*f - A*e*g, 0] && EqQ[B*e*g - C*(e*f + d*g), 0]
Int[(a_. + b_.*Log[c_.*Sqrt[d_. + e_.*x_]/Sqrt[f_. + g_.*x_]])^ n_./(A_. + C_.*x_^2), x_Symbol] := g/(C*f)* Subst[Int[(a + b*Log[c*x])^n/x, x], x, Sqrt[d + e*x]/Sqrt[f + g*x]] /; FreeQ[{a, b, c, d, e, f, g, A, C, n}, x] && EqQ[C*d*f - A*e*g, 0] && EqQ[e*f + d*g, 0]
Int[RFx_.*Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.], x_Symbol] := p*r*Int[RFx*Log[a + b*x], x] + q*r*Int[RFx*Log[c + d*x], x] - (p*r*Log[a + b*x] + q*r*Log[c + d*x] - Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r])*Int[RFx, x] /; FreeQ[{a, b, c, d, e, f, p, q, r}, x] && RationalFunctionQ[RFx, x] && NeQ[b*c - a*d, 0] && Not[ MatchQ[RFx, u_.*(a + b*x)^m_.*(c + d*x)^n_. /; IntegersQ[m, n]]]
(* Int[RFx_*Log[e_.*(f_.*(a_.+b_.*x_)^p_.*(c_.+d_.*x_)^q_.)^r_.],x_ Symbol] := With[{u=IntHide[RFx,x]}, u*Log[e*(f*(a+b*x)^p*(c+d*x)^q)^r] - b*p*r*Int[u/(a+b*x),x] -  d*q*r*Int[u/(c+d*x),x] /; NonsumQ[u]] /; FreeQ[{a,b,c,d,e,f,p,q,r},x] && RationalFunctionQ[RFx,x] &&  NeQ[b*c-a*d,0] *)
Int[RFx_*Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := With[{u = ExpandIntegrand[Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^s, RFx, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, d, e, f, p, q, r, s}, x] && RationalFunctionQ[RFx, x] && IGtQ[s, 0]
Int[RFx_*Log[e_.*(f_.*(a_. + b_.*x_)^p_.*(c_. + d_.*x_)^q_.)^r_.]^s_., x_Symbol] := Unintegrable[RFx*Log[e*(f*(a + b*x)^p*(c + d*x)^q)^r]^s, x] /; FreeQ[{a, b, c, d, e, f, p, q, r, s}, x] && RationalFunctionQ[RFx, x]
Int[u_.*Log[e_.*(f_.*v_^p_.*w_^q_.)^r_.]^s_., x_Symbol] := Int[u*Log[e*(f*ExpandToSum[v, x]^p*ExpandToSum[w, x]^q)^r]^s, x] /; FreeQ[{e, f, p, q, r, s}, x] && LinearQ[{v, w}, x] && Not[LinearMatchQ[{v, w}, x]] && AlgebraicFunctionQ[u, x]
Int[u_.*Log[e_.*(f_.*(g_ + v_./w_))^r_.]^s_., x_Symbol] := Int[u*Log[e*(f*ExpandToSum[v + g*w, x]/ExpandToSum[w, x])^r]^s, x] /; FreeQ[{e, f, g, r, s}, x] && LinearQ[w, x] && (FreeQ[v, x] || LinearQ[v, x]) && AlgebraicFunctionQ[u, x]
(* Int[Log[g_.*(h_.*(a_.+b_.*x_)^p_.)^q_.]*Log[i_.*(j_.*(c_.+d_.*x_)^ r_.)^s_.]/(e_+f_.*x_),x_Symbol] := 1/f*Subst[Int[Log[g*(h*Simp[-(b*e-a*f)/f+b*x/f,x]^p)^q]*Log[i*(j* Simp[-(d*e-c*f)/f+d*x/f,x]^r)^s]/x,x],x,e+f*x] /; FreeQ[{a,b,c,d,e,f,g,h,i,j,p,q,r,s},x] *)
