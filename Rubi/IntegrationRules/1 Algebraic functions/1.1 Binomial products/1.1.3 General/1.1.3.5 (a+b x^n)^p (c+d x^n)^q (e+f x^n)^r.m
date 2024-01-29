
(* ::Subsection::Closed:: *)
(* 1.1.3.5 (a+b x^n)^p (c+d x^n)^q (e+f x^n)^r *)
Int[(a_ + b_.*x_^n_)^p_.*(c_ + d_.*x_^n_)^q_.*(e_ + f_.*x_^n_)^r_., x_Symbol] := Int[ExpandIntegrand[(a + b*x^n)^p*(c + d*x^n)^q*(e + f*x^n)^r, x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[p, 0] && IGtQ[q, 0] && IGtQ[r, 0]
Int[(e_ + f_.*x_^n_)/((a_ + b_.*x_^n_)*(c_ + d_.*x_^n_)), x_Symbol] := (b*e - a*f)/(b*c - a*d)*Int[1/(a + b*x^n), x] - (d*e - c*f)/(b*c - a*d)*Int[1/(c + d*x^n), x] /; FreeQ[{a, b, c, d, e, f, n}, x]
Int[(e_ + f_.*x_^n_)/((a_ + b_.*x_^n_)*Sqrt[c_ + d_.*x_^n_]), x_Symbol] := f/b*Int[1/Sqrt[c + d*x^n], x] + (b*e - a*f)/b*Int[1/((a + b*x^n)*Sqrt[c + d*x^n]), x] /; FreeQ[{a, b, c, d, e, f, n}, x]
Int[(e_ + f_.*x_^n_)/(Sqrt[a_ + b_.*x_^n_]*Sqrt[c_ + d_.*x_^n_]), x_Symbol] := f/b*Int[Sqrt[a + b*x^n]/Sqrt[c + d*x^n], x] + (b*e - a*f)/b*Int[1/(Sqrt[a + b*x^n]*Sqrt[c + d*x^n]), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && Not[ EqQ[n, 2] && (PosQ[b/a] && PosQ[d/c] || NegQ[b/a] && (PosQ[d/c] || GtQ[a, 0] && (Not[GtQ[c, 0]] || SimplerSqrtQ[-b/a, -d/c])))]
Int[(e_ + f_.*x_^2)/(Sqrt[a_ + b_.*x_^2]*(c_ + d_.*x_^2)^(3/2)), x_Symbol] := (b*e - a*f)/(b*c - a*d)* Int[1/(Sqrt[a + b*x^2]*Sqrt[c + d*x^2]), x] - (d*e - c*f)/(b*c - a*d)* Int[Sqrt[a + b*x^2]/(c + d*x^2)^(3/2), x] /; FreeQ[{a, b, c, d, e, f}, x] && PosQ[b/a] && PosQ[d/c]
Int[(a_ + b_.*x_^n_)^p_*(c_ + d_.*x_^n_)^q_.*(e_ + f_.*x_^n_), x_Symbol] := -(b*e - a*f)* x*(a + b*x^n)^(p + 1)*(c + d*x^n)^q/(a*b*n*(p + 1)) + 1/(a*b*n*(p + 1))* Int[(a + b*x^n)^(p + 1)*(c + d*x^n)^(q - 1)* Simp[c*(b*e*n*(p + 1) + b*e - a*f) + d*(b*e*n*(p + 1) + (b*e - a*f)*(n*q + 1))*x^n, x], x] /; FreeQ[{a, b, c, d, e, f, n}, x] && LtQ[p, -1] && GtQ[q, 0]
Int[(a_ + b_.*x_^n_)^p_*(c_ + d_.*x_^n_)^q_.*(e_ + f_.*x_^n_), x_Symbol] := -(b*e - a*f)* x*(a + b*x^n)^(p + 1)*(c + d*x^n)^(q + 1)/(a* n*(b*c - a*d)*(p + 1)) + 1/(a*n*(b*c - a*d)*(p + 1))* Int[(a + b*x^n)^(p + 1)*(c + d*x^n)^q* Simp[c*(b*e - a*f) + e*n*(b*c - a*d)*(p + 1) + d*(b*e - a*f)*(n*(p + q + 2) + 1)*x^n, x], x] /; FreeQ[{a, b, c, d, e, f, n, q}, x] && LtQ[p, -1]
Int[(a_ + b_.*x_^n_)^p_.*(c_ + d_.*x_^n_)^q_.*(e_ + f_.*x_^n_), x_Symbol] := f*x*(a + b*x^n)^(p + 1)*(c + d*x^n)^q/(b*(n*(p + q + 1) + 1)) + 1/(b*(n*(p + q + 1) + 1))* Int[(a + b*x^n)^p*(c + d*x^n)^(q - 1)* Simp[c*(b*e - a*f + b*e*n*(p + q + 1)) + (d*(b*e - a*f) + f*n*q*(b*c - a*d) + b*d*e*n*(p + q + 1))*x^n, x], x] /; FreeQ[{a, b, c, d, e, f, n, p}, x] && GtQ[q, 0] && NeQ[n*(p + q + 1) + 1, 0]
Int[(e_ + f_.*x_^4)/((a_ + b_.*x_^4)^(3/4)*(c_ + d_.*x_^4)), x_Symbol] := (b*e - a*f)/(b*c - a*d)* Int[1/(a + b*x^4)^(3/4), x] - (d*e - c*f)/(b*c - a*d)* Int[(a + b*x^4)^(1/4)/(c + d*x^4), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[(a_ + b_.*x_^n_)^p_*(e_ + f_.*x_^n_)/(c_ + d_.*x_^n_), x_Symbol] := f/d*Int[(a + b*x^n)^p, x] + (d*e - c*f)/d* Int[(a + b*x^n)^p/(c + d*x^n), x] /; FreeQ[{a, b, c, d, e, f, p, n}, x]
Int[(a_ + b_.*x_^n_)^p_.*(c_ + d_.*x_^n_)^q_.*(e_ + f_.*x_^n_), x_Symbol] := e*Int[(a + b*x^n)^p*(c + d*x^n)^q, x] + f*Int[x^n*(a + b*x^n)^p*(c + d*x^n)^q, x] /; FreeQ[{a, b, c, d, e, f, n, p, q}, x]
Int[1/((a_ + b_.*x_^2)*(c_ + d_.*x_^2)*Sqrt[e_ + f_.*x_^2]), x_Symbol] := b/(b*c - a*d)*Int[1/((a + b*x^2)*Sqrt[e + f*x^2]), x] - d/(b*c - a*d)*Int[1/((c + d*x^2)*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[1/(x_^2*(c_ + d_.*x_^2)*Sqrt[e_ + f_.*x_^2]), x_Symbol] := 1/c*Int[1/(x^2*Sqrt[e + f*x^2]), x] - d/c*Int[1/((c + d*x^2)*Sqrt[e + f*x^2]), x] /; FreeQ[{c, d, e, f}, x] && NeQ[d*e - c*f, 0]
Int[Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]/(a_ + b_.*x_^2), x_Symbol] := d/b*Int[Sqrt[e + f*x^2]/Sqrt[c + d*x^2], x] + (b*c - a*d)/b* Int[Sqrt[e + f*x^2]/((a + b*x^2)*Sqrt[c + d*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && GtQ[d/c, 0] && GtQ[f/e, 0] && Not[SimplerSqrtQ[d/c, f/e]]
Int[Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]/(a_ + b_.*x_^2), x_Symbol] := d/b*Int[Sqrt[e + f*x^2]/Sqrt[c + d*x^2], x] + (b*c - a*d)/b* Int[Sqrt[e + f*x^2]/((a + b*x^2)*Sqrt[c + d*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && Not[SimplerSqrtQ[-f/e, -d/c]]
Int[1/((a_ + b_.*x_^2)*Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol] := -f/(b*e - a*f)*Int[1/(Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] + b/(b*e - a*f)* Int[Sqrt[e + f*x^2]/((a + b*x^2)*Sqrt[c + d*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && GtQ[d/c, 0] && GtQ[f/e, 0] && Not[SimplerSqrtQ[d/c, f/e]]
Int[1/((a_ + b_.*x_^2)*Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol] := 1/(a*Sqrt[c]*Sqrt[e]*Rt[-d/c, 2])* EllipticPi[b*c/(a*d), ArcSin[Rt[-d/c, 2]*x], c*f/(d*e)] /; FreeQ[{a, b, c, d, e, f}, x] && Not[GtQ[d/c, 0]] && GtQ[c, 0] && GtQ[e, 0] && Not[Not[GtQ[f/e, 0]] && SimplerSqrtQ[-f/e, -d/c]]
Int[1/((a_ + b_.*x_^2)*Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol] := Sqrt[1 + d/c*x^2]/Sqrt[c + d*x^2]* Int[1/((a + b*x^2)*Sqrt[1 + d/c*x^2]*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && Not[GtQ[c, 0]]
Int[Sqrt[c_ + d_.*x_^2]/((a_ + b_.*x_^2)*Sqrt[e_ + f_.*x_^2]), x_Symbol] := c*Sqrt[ e + f*x^2]/(a*e*Rt[d/c, 2]*Sqrt[c + d*x^2]* Sqrt[c*(e + f*x^2)/(e*(c + d*x^2))])* EllipticPi[1 - b*c/(a*d), ArcTan[Rt[d/c, 2]*x], 1 - c*f/(d*e)] /; FreeQ[{a, b, c, d, e, f}, x] && PosQ[d/c]
(* Int[Sqrt[c_+d_.*x_^2]/((a_+b_.*x_^2)*Sqrt[e_+f_.*x_^2]),x_Symbol] := Sqrt[c+d*x^2]*Sqrt[c*(e+f*x^2)/(e*(c+d*x^2))]/(a*Rt[d/c,2]*Sqrt[e+f* x^2])* EllipticPi[1-b*c/(a*d),ArcTan[Rt[d/c,2]*x],1-c*f/(d*e)] /; FreeQ[{a,b,c,d,e,f},x] && PosQ[d/c] *)
Int[Sqrt[c_ + d_.*x_^2]/((a_ + b_.*x_^2)*Sqrt[e_ + f_.*x_^2]), x_Symbol] := d/b*Int[1/(Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] + (b*c - a*d)/b* Int[1/((a + b*x^2)*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NegQ[d/c]
Int[Sqrt[e_ + f_.*x_^2]/((a_ + b_.*x_^2)*(c_ + d_.*x_^2)^(3/2)), x_Symbol] := b/(b*c - a*d)* Int[Sqrt[e + f*x^2]/((a + b*x^2)*Sqrt[c + d*x^2]), x] - d/(b*c - a*d)*Int[Sqrt[e + f*x^2]/(c + d*x^2)^(3/2), x] /; FreeQ[{a, b, c, d, e, f}, x] && PosQ[d/c] && PosQ[f/e]
Int[(e_ + f_.*x_^2)^(3/2)/((a_ + b_.*x_^2)*(c_ + d_.*x_^2)^(3/2)), x_Symbol] := (b*e - a*f)/(b*c - a*d)* Int[Sqrt[e + f*x^2]/((a + b*x^2)*Sqrt[c + d*x^2]), x] - (d*e - c*f)/(b*c - a*d)* Int[Sqrt[e + f*x^2]/(c + d*x^2)^(3/2), x] /; FreeQ[{a, b, c, d, e, f}, x] && PosQ[d/c] && PosQ[f/e]
Int[(c_ + d_.*x_^2)^(3/2)*Sqrt[e_ + f_.*x_^2]/(a_ + b_.*x_^2), x_Symbol] := (b*c - a*d)^2/b^2* Int[Sqrt[e + f*x^2]/((a + b*x^2)*Sqrt[c + d*x^2]), x] + d/b^2* Int[(2*b*c - a*d + b*d*x^2)*Sqrt[e + f*x^2]/Sqrt[c + d*x^2], x] /; FreeQ[{a, b, c, d, e, f}, x] && PosQ[d/c] && PosQ[f/e]
Int[(c_ + d_.*x_^2)^q_*(e_ + f_.*x_^2)^r_/(a_ + b_.*x_^2), x_Symbol] := b*(b*e - a*f)/(b*c - a*d)^2* Int[(c + d*x^2)^(q + 2)*(e + f*x^2)^(r - 1)/(a + b*x^2), x] - 1/(b*c - a*d)^2* Int[(c + d*x^2)^ q*(e + f*x^2)^(r - 1)*(2*b*c*d*e - a*d^2*e - b*c^2*f + d^2*(b*e - a*f)*x^2), x] /; FreeQ[{a, b, c, d, e, f}, x] && LtQ[q, -1] && GtQ[r, 1]
Int[(c_ + d_.*x_^2)^q_*(e_ + f_.*x_^2)^r_/(a_ + b_.*x_^2), x_Symbol] := d/b*Int[(c + d*x^2)^(q - 1)*(e + f*x^2)^r, x] + (b*c - a*d)/b* Int[(c + d*x^2)^(q - 1)*(e + f*x^2)^r/(a + b*x^2), x] /; FreeQ[{a, b, c, d, e, f, r}, x] && GtQ[q, 1]
Int[(c_ + d_.*x_^2)^q_*(e_ + f_.*x_^2)^r_/(a_ + b_.*x_^2), x_Symbol] := b^2/(b*c - a*d)^2* Int[(c + d*x^2)^(q + 2)*(e + f*x^2)^r/(a + b*x^2), x] - d/(b*c - a*d)^2* Int[(c + d*x^2)^q*(e + f*x^2)^r*(2*b*c - a*d + b*d*x^2), x] /; FreeQ[{a, b, c, d, e, f, r}, x] && LtQ[q, -1]
Int[(c_ + d_.*x_^2)^q_*(e_ + f_.*x_^2)^r_/(a_ + b_.*x_^2), x_Symbol] := -d/(b*c - a*d)*Int[(c + d*x^2)^q*(e + f*x^2)^r, x] + b/(b*c - a*d)* Int[(c + d*x^2)^(q + 1)*(e + f*x^2)^r/(a + b*x^2), x] /; FreeQ[{a, b, c, d, e, f, r}, x] && LeQ[q, -1]
Int[Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]/(a_ + b_.*x_^2)^2, x_Symbol] := x*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]/(2*a*(a + b*x^2)) + d*f/(2*a*b^2)* Int[(a - b*x^2)/(Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] + (b^2*c*e - a^2*d*f)/(2*a*b^2)* Int[1/((a + b*x^2)*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[1/((a_ + b_.*x_^2)^2*Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol] := b^2*x*Sqrt[c + d*x^2]* Sqrt[e + f*x^2]/(2*a*(b*c - a*d)*(b*e - a*f)*(a + b*x^2)) - d*f/(2*a*(b*c - a*d)*(b*e - a*f))* Int[(a + b*x^2)/(Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] + (b^2*c*e + 3*a^2*d*f - 2*a*b*(d*e + c*f))/(2* a*(b*c - a*d)*(b*e - a*f))* Int[1/((a + b*x^2)*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[(a_ + b_.*x_^n_)^p_*(c_ + d_.*x_^n_)^q_*(e_ + f_.*x_^n_)^r_, x_Symbol] := d/b*Int[(a + b*x^n)^(p + 1)*(c + d*x^n)^(q - 1)*(e + f*x^n)^r, x] + (b*c - a*d)/b* Int[(a + b*x^n)^p*(c + d*x^n)^(q - 1)*(e + f*x^n)^r, x] /; FreeQ[{a, b, c, d, e, f, n, r}, x] && ILtQ[p, 0] && GtQ[q, 0]
Int[(a_ + b_.*x_^n_)^p_*(c_ + d_.*x_^n_)^q_*(e_ + f_.*x_^n_)^r_, x_Symbol] := b/(b*c - a*d)* Int[(a + b*x^n)^p*(c + d*x^n)^(q + 1)*(e + f*x^n)^r, x] - d/(b*c - a*d)* Int[(a + b*x^n)^(p + 1)*(c + d*x^n)^q*(e + f*x^n)^r, x] /; FreeQ[{a, b, c, d, e, f, n, q}, x] && ILtQ[p, 0] && LeQ[q, -1]
Int[1/(Sqrt[a_ + b_.*x_^2]*Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol] := Sqrt[c + d*x^2]* Sqrt[a*(e + f*x^2)/(e*(a + b*x^2))]/(c*Sqrt[e + f*x^2]* Sqrt[a*(c + d*x^2)/(c*(a + b*x^2))])* Subst[ Int[1/(Sqrt[1 - (b*c - a*d)*x^2/c]*Sqrt[1 - (b*e - a*f)*x^2/e]), x], x, x/Sqrt[a + b*x^2]] /; FreeQ[{a, b, c, d, e, f}, x]
Int[Sqrt[a_ + b_.*x_^2]/(Sqrt[c_ + d_.*x_^2]*Sqrt[e_ + f_.*x_^2]), x_Symbol] := a*Sqrt[c + d*x^2]* Sqrt[a*(e + f*x^2)/(e*(a + b*x^2))]/(c*Sqrt[e + f*x^2]* Sqrt[a*(c + d*x^2)/(c*(a + b*x^2))])* Subst[ Int[1/((1 - b*x^2)*Sqrt[1 - (b*c - a*d)*x^2/c]* Sqrt[1 - (b*e - a*f)*x^2/e]), x], x, x/Sqrt[a + b*x^2]] /; FreeQ[{a, b, c, d, e, f}, x]
Int[Sqrt[c_ + d_.*x_^2]/((a_ + b_.*x_^2)^(3/2)*Sqrt[e_ + f_.*x_^2]), x_Symbol] := Sqrt[c + d*x^2]* Sqrt[a*(e + f*x^2)/(e*(a + b*x^2))]/(a*Sqrt[e + f*x^2]* Sqrt[a*(c + d*x^2)/(c*(a + b*x^2))])* Subst[ Int[Sqrt[1 - (b*c - a*d)*x^2/c]/Sqrt[1 - (b*e - a*f)*x^2/e], x], x, x/Sqrt[a + b*x^2]] /; FreeQ[{a, b, c, d, e, f}, x]
Int[Sqrt[a_ + b_.*x_^2]*Sqrt[c_ + d_.*x_^2]/Sqrt[e_ + f_.*x_^2], x_Symbol] := d*x*Sqrt[a + b*x^2]*Sqrt[e + f*x^2]/(2*f*Sqrt[c + d*x^2]) - c*(d*e - c*f)/(2*f)* Int[Sqrt[a + b*x^2]/((c + d*x^2)^(3/2)*Sqrt[e + f*x^2]), x] + b*c*(d*e - c*f)/(2*d*f)* Int[1/(Sqrt[a + b*x^2]*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] - (b*d*e - b*c*f - a*d*f)/(2*d*f)* Int[Sqrt[c + d*x^2]/(Sqrt[a + b*x^2]*Sqrt[e + f*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && PosQ[(d*e - c*f)/c]
Int[Sqrt[a_ + b_.*x_^2]*Sqrt[c_ + d_.*x_^2]/Sqrt[e_ + f_.*x_^2], x_Symbol] := x*Sqrt[a + b*x^2]*Sqrt[c + d*x^2]/(2*Sqrt[e + f*x^2]) + e*(b*e - a*f)/(2*f)* Int[Sqrt[c + d*x^2]/(Sqrt[a + b*x^2]*(e + f*x^2)^(3/2)), x] + (b*e - a*f)*(d*e - 2*c*f)/(2*f^2)* Int[1/(Sqrt[a + b*x^2]*Sqrt[c + d*x^2]*Sqrt[e + f*x^2]), x] - (b*d*e - b*c*f - a*d*f)/(2*f^2)* Int[Sqrt[e + f*x^2]/(Sqrt[a + b*x^2]*Sqrt[c + d*x^2]), x] /; FreeQ[{a, b, c, d, e, f}, x] && NegQ[(d*e - c*f)/c]
Int[Sqrt[a_ + b_.*x_^2]*Sqrt[c_ + d_.*x_^2]/(e_ + f_.*x_^2)^(3/2), x_Symbol] := b/f*Int[Sqrt[c + d*x^2]/(Sqrt[a + b*x^2]*Sqrt[e + f*x^2]), x] - (b*e - a*f)/f* Int[Sqrt[c + d*x^2]/(Sqrt[a + b*x^2]*(e + f*x^2)^(3/2)), x] /; FreeQ[{a, b, c, d, e, f}, x]
Int[(a_ + b_.*x_^n_)^p_*(c_ + d_.*x_^n_)^q_*(e_ + f_.*x_^n_)^r_, x_Symbol] := With[{u = ExpandIntegrand[(a + b*x^n)^p*(c + d*x^n)^q*(e + f*x^n)^r, x]}, Int[u, x] /; SumQ[u]] /; FreeQ[{a, b, c, d, e, f, p, q, r}, x] && IGtQ[n, 0]
Int[(a_ + b_.*x_^n_)^p_*(c_ + d_.*x_^n_)^q_*(e_ + f_.*x_^n_)^r_, x_Symbol] := -Subst[ Int[(a + b*x^(-n))^p*(c + d*x^(-n))^q*(e + f*x^(-n))^r/x^2, x], x, 1/x] /; FreeQ[{a, b, c, d, e, f, p, q, r}, x] && ILtQ[n, 0]
Int[(a_ + b_.*x_^n_)^p_.*(c_ + d_.*x_^n_)^q_.*(e_ + f_.*x_^n_)^r_., x_Symbol] := Unintegrable[(a + b*x^n)^p*(c + d*x^n)^q*(e + f*x^n)^r, x] /; FreeQ[{a, b, c, d, e, f, n, p, q, r}, x]
Int[(a_. + b_.*u_^n_)^p_.*(c_. + d_.*v_^n_)^q_.*(e_. + f_.*w_^n_)^r_., x_Symbol] := 1/Coefficient[u, x, 1]* Subst[Int[(a + b*x^n)^p*(c + d*x^n)^q*(e + f*x^n)^r, x], x, u] /; FreeQ[{a, b, c, d, e, f, p, n, q, r}, x] && EqQ[u, v] && EqQ[u, w] && LinearQ[u, x] && NeQ[u, x]
Int[(a_. + b_.*x_^n_.)^p_.*(c_ + d_.*x_^mn_.)^q_.*(e_ + f_.*x_^n_.)^ r_., x_Symbol] := Int[(a + b*x^n)^p*(d + c*x^n)^q*(e + f*x^n)^r/x^(n*q), x] /; FreeQ[{a, b, c, d, e, f, n, p, r}, x] && EqQ[mn, -n] && IntegerQ[q]
Int[(a_. + b_.*x_^n_.)^p_.*(c_ + d_.*x_^mn_.)^q_.*(e_ + f_.*x_^n_.)^ r_., x_Symbol] := Int[x^(n*(p + r))*(b + a*x^(-n))^p*(c + d*x^(-n))^q*(f + e*x^(-n))^ r, x] /; FreeQ[{a, b, c, d, e, f, n, q}, x] && EqQ[mn, -n] && IntegerQ[p] && IntegerQ[r]
Int[(a_. + b_.*x_^n_.)^p_.*(c_ + d_.*x_^mn_.)^q_*(e_ + f_.*x_^n_.)^ r_., x_Symbol] := x^(n*FracPart[q])*(c + d*x^(-n))^FracPart[q]/(d + c*x^n)^ FracPart[q]* Int[(a + b*x^n)^p*(d + c*x^n)^q*(e + f*x^n)^r/x^(n*q), x] /; FreeQ[{a, b, c, d, e, f, n, p, q, r}, x] && EqQ[mn, -n] && Not[IntegerQ[q]]
Int[(a_ + b_.*x_^n_)^p_.*(c_ + d_.*x_^n_)^q_.*(e1_ + f1_.*x_^n2_.)^ r_.*(e2_ + f2_.*x_^n2_.)^r_., x_Symbol] := Int[(a + b*x^n)^p*(c + d*x^n)^q*(e1*e2 + f1*f2*x^n)^r, x] /; FreeQ[{a, b, c, d, e1, f1, e2, f2, n, p, q, r}, x] && EqQ[n2, n/2] && EqQ[e2*f1 + e1*f2, 0] && (IntegerQ[r] || GtQ[e1, 0] && GtQ[e2, 0])
Int[(a_ + b_.*x_^n_)^p_.*(c_ + d_.*x_^n_)^q_.*(e1_ + f1_.*x_^n2_.)^ r_.*(e2_ + f2_.*x_^n2_.)^r_., x_Symbol] := (e1 + f1*x^(n/2))^ FracPart[r]*(e2 + f2*x^(n/2))^FracPart[r]/(e1*e2 + f1*f2*x^n)^ FracPart[r]* Int[(a + b*x^n)^p*(c + d*x^n)^q*(e1*e2 + f1*f2*x^n)^r, x] /; FreeQ[{a, b, c, d, e1, f1, e2, f2, n, p, q, r}, x] && EqQ[n2, n/2] && EqQ[e2*f1 + e1*f2, 0]
