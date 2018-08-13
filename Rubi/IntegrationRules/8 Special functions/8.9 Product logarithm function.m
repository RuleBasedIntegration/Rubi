
(* ::Subsection::Closed:: *)
(* 8.9 Product logarithm function *)
Int[(c_.*ProductLog[a_. + b_.*x_])^p_, x_Symbol] := (a + b*x)*(c*ProductLog[a + b*x])^p/(b*(p + 1)) + p/(c*(p + 1))* Int[(c*ProductLog[a + b*x])^(p + 1)/(1 + ProductLog[a + b*x]), x] /; FreeQ[{a, b, c}, x] && LtQ[p, -1]
Int[(c_.*ProductLog[a_. + b_.*x_])^p_., x_Symbol] := (a + b*x)*(c*ProductLog[a + b*x])^p/b - p*Int[(c*ProductLog[a + b*x])^p/(1 + ProductLog[a + b*x]), x] /; FreeQ[{a, b, c}, x] && Not[LtQ[p, -1]]
Int[(e_. + f_.*x_)^m_.*(c_.*ProductLog[a_ + b_.*x_])^p_., x_Symbol] := 1/b^(m + 1)* Subst[Int[ ExpandIntegrand[(c*ProductLog[x])^p, (b*e - a*f + f*x)^m, x], x], x, a + b*x] /; FreeQ[{a, b, c, e, f, p}, x] && IGtQ[m, 0]
Int[(c_.*ProductLog[a_.*x_^n_])^p_., x_Symbol] := x*(c*ProductLog[a*x^n])^p - n*p*Int[(c*ProductLog[a*x^n])^p/(1 + ProductLog[a*x^n]), x] /; FreeQ[{a, c, n, p}, x] && (EqQ[n*(p - 1), -1] || IntegerQ[p - 1/2] && EqQ[n*(p - 1/2), -1])
Int[(c_.*ProductLog[a_.*x_^n_])^p_., x_Symbol] := x*(c*ProductLog[a*x^n])^p/(n*p + 1) + n*p/(c*(n*p + 1))* Int[(c*ProductLog[a*x^n])^(p + 1)/(1 + ProductLog[a*x^n]), x] /; FreeQ[{a, c, n}, x] && (IntegerQ[p] && EqQ[n*(p + 1), -1] || IntegerQ[p - 1/2] && EqQ[n*(p + 1/2), -1])
Int[(c_.*ProductLog[a_.*x_^n_])^p_., x_Symbol] := -Subst[Int[(c*ProductLog[a*x^(-n)])^p/x^2, x], x, 1/x] /; FreeQ[{a, c, p}, x] && ILtQ[n, 0]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^p_., x_Symbol] := x^(m + 1)*(c*ProductLog[a*x^n])^p/(m + 1) - n*p/(m + 1)* Int[x^m*(c*ProductLog[a*x^n])^p/(1 + ProductLog[a*x^n]), x] /; FreeQ[{a, c, m, n, p}, x] && NeQ[m, -1] && (IntegerQ[p - 1/2] && IGtQ[2*Simplify[p + (m + 1)/n], 0] || Not[IntegerQ[p - 1/2]] && IGtQ[Simplify[p + (m + 1)/n] + 1, 0])
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^p_., x_Symbol] := x^(m + 1)*(c*ProductLog[a*x^n])^p/(m + n*p + 1) + n*p/(c*(m + n*p + 1))* Int[x^m*(c*ProductLog[a*x^n])^(p + 1)/(1 + ProductLog[a*x^n]), x] /; FreeQ[{a, c, m, n, p}, x] && (EqQ[m, -1] || IntegerQ[p - 1/2] && ILtQ[Simplify[p + (m + 1)/n] - 1/2, 0] || Not[IntegerQ[p - 1/2]] && ILtQ[Simplify[p + (m + 1)/n], 0])
Int[x_^m_.*(c_.*ProductLog[a_.*x_])^p_., x_Symbol] := Int[x^m*(c*ProductLog[a*x])^p/(1 + ProductLog[a*x]), x] + 1/c*Int[x^m*(c*ProductLog[a*x])^(p + 1)/(1 + ProductLog[a*x]), x] /; FreeQ[{a, c, m}, x]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_])^p_., x_Symbol] := -Subst[Int[(c*ProductLog[a*x^(-n)])^p/x^(m + 2), x], x, 1/x] /; FreeQ[{a, c, p}, x] && ILtQ[n, 0] && IntegerQ[m] && NeQ[m, -1]
Int[1/(d_ + d_.*ProductLog[a_. + b_.*x_]), x_Symbol] := (a + b*x)/(b*d*ProductLog[a + b*x]) /; FreeQ[{a, b, d}, x]
Int[ProductLog[a_. + b_.*x_]/(d_ + d_.*ProductLog[a_. + b_.*x_]), x_Symbol] := d*x - Int[1/(d + d*ProductLog[a + b*x]), x] /; FreeQ[{a, b, d}, x]
Int[(c_.*ProductLog[a_. + b_.*x_])^ p_/(d_ + d_.*ProductLog[a_. + b_.*x_]), x_Symbol] := c*(a + b*x)*(c*ProductLog[a + b*x])^(p - 1)/(b*d) - c*p*Int[(c*ProductLog[a + b*x])^(p - 1)/(d + d*ProductLog[a + b*x]), x] /; FreeQ[{a, b, c, d}, x] && GtQ[p, 0]
Int[1/(ProductLog[a_. + b_.*x_]*(d_ + d_.*ProductLog[a_. + b_.*x_])), x_Symbol] := ExpIntegralEi[ProductLog[a + b*x]]/(b*d) /; FreeQ[{a, b, d}, x]
Int[1/(Sqrt[ c_.*ProductLog[a_. + b_.*x_]]*(d_ + d_.*ProductLog[a_. + b_.*x_])), x_Symbol] := Rt[Pi*c, 2]*Erfi[Sqrt[c*ProductLog[a + b*x]]/Rt[c, 2]]/(b*c*d) /; FreeQ[{a, b, c, d}, x] && PosQ[c]
Int[1/(Sqrt[ c_.*ProductLog[a_. + b_.*x_]]*(d_ + d_.*ProductLog[a_. + b_.*x_])), x_Symbol] := Rt[-Pi*c, 2]*Erf[Sqrt[c*ProductLog[a + b*x]]/Rt[-c, 2]]/(b*c*d) /; FreeQ[{a, b, c, d}, x] && NegQ[c]
Int[(c_.*ProductLog[a_. + b_.*x_])^ p_/(d_ + d_.*ProductLog[a_. + b_.*x_]), x_Symbol] := (a + b*x)*(c*ProductLog[a + b*x])^p/(b*d*(p + 1)) - 1/(c*(p + 1))* Int[(c*ProductLog[a + b*x])^(p + 1)/(d + d*ProductLog[a + b*x]), x] /; FreeQ[{a, b, c, d}, x] && LtQ[p, -1]
Int[(c_.*ProductLog[a_. + b_.*x_])^ p_./(d_ + d_.*ProductLog[a_. + b_.*x_]), x_Symbol] := Gamma[p + 1, -ProductLog[a + b*x]]*(c*ProductLog[a + b*x])^ p/(b*d*(-ProductLog[a + b*x])^p) /; FreeQ[{a, b, c, d, p}, x]
Int[(e_. + f_.*x_)^m_./(d_ + d_.*ProductLog[a_ + b_.*x_]), x_Symbol] := 1/b^(m + 1)* Subst[Int[ ExpandIntegrand[1/(d + d*ProductLog[x]), (b*e - a*f + f*x)^m, x], x], x, a + b*x] /; FreeQ[{a, b, d, e, f}, x] && IGtQ[m, 0]
Int[(e_. + f_.*x_)^ m_.*(c_.*ProductLog[a_ + b_.*x_])^ p_./(d_ + d_.*ProductLog[a_ + b_.*x_]), x_Symbol] := 1/b^(m + 1)* Subst[Int[ ExpandIntegrand[(c*ProductLog[x])^ p/(d + d*ProductLog[x]), (b*e - a*f + f*x)^m, x], x], x, a + b*x] /; FreeQ[{a, b, c, d, e, f, p}, x] && IGtQ[m, 0]
Int[1/(d_ + d_.*ProductLog[a_.*x_^n_]), x_Symbol] := -Subst[Int[1/(x^2*(d + d*ProductLog[a*x^(-n)])), x], x, 1/x] /; FreeQ[{a, d}, x] && ILtQ[n, 0]
Int[(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := c*x*(c*ProductLog[a*x^n])^(p - 1)/d /; FreeQ[{a, c, d, n, p}, x] && EqQ[n*(p - 1), -1]
Int[ProductLog[a_.*x_^n_.]^p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := a^p*ExpIntegralEi[-p*ProductLog[a*x^n]]/(d*n) /; FreeQ[{a, d}, x] && IntegerQ[p] && EqQ[n*p, -1]
Int[(c_.*ProductLog[a_.*x_^n_.])^p_/(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := Rt[Pi*c*n, 2]/(d*n*a^(1/n)*c^(1/n))* Erfi[Sqrt[c*ProductLog[a*x^n]]/Rt[c*n, 2]] /; FreeQ[{a, c, d}, x] && IntegerQ[1/n] && EqQ[p, 1/2 - 1/n] && PosQ[c*n]
Int[(c_.*ProductLog[a_.*x_^n_.])^p_/(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := Rt[-Pi*c*n, 2]/(d*n*a^(1/n)*c^(1/n))* Erf[Sqrt[c*ProductLog[a*x^n]]/Rt[-c*n, 2]] /; FreeQ[{a, c, d}, x] && IntegerQ[1/n] && EqQ[p, 1/2 - 1/n] && NegQ[c*n]
Int[(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := c*x*(c*ProductLog[a*x^n])^(p - 1)/d - c*(n*(p - 1) + 1)* Int[(c*ProductLog[a*x^n])^(p - 1)/(d + d*ProductLog[a*x^n]), x] /; FreeQ[{a, c, d}, x] && GtQ[n, 0] && GtQ[n*(p - 1) + 1, 0]
Int[(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := x*(c*ProductLog[a*x^n])^p/(d*(n*p + 1)) - 1/(c*(n*p + 1))* Int[(c*ProductLog[a*x^n])^(p + 1)/(d + d*ProductLog[a*x^n]), x] /; FreeQ[{a, c, d}, x] && GtQ[n, 0] && LtQ[n*p + 1, 0]
Int[(c_.*ProductLog[a_.*x_^n_])^p_./(d_ + d_.*ProductLog[a_.*x_^n_]), x_Symbol] := -Subst[ Int[(c*ProductLog[a*x^(-n)])^p/(x^2*(d + d*ProductLog[a*x^(-n)])), x], x, 1/x] /; FreeQ[{a, c, d, p}, x] && ILtQ[n, 0]
Int[x_^m_./(d_ + d_.*ProductLog[a_.*x_]), x_Symbol] := x^(m + 1)/(d*(m + 1)*ProductLog[a*x]) - m/(m + 1)*Int[x^m/(ProductLog[a*x]*(d + d*ProductLog[a*x])), x] /; FreeQ[{a, d}, x] && GtQ[m, 0]
Int[1/(x_*(d_ + d_.*ProductLog[a_.*x_])), x_Symbol] := Log[ProductLog[a*x]]/d /; FreeQ[{a, d}, x]
Int[x_^m_./(d_ + d_.*ProductLog[a_.*x_]), x_Symbol] := x^(m + 1)/(d*(m + 1)) - Int[x^m*ProductLog[a*x]/(d + d*ProductLog[a*x]), x] /; FreeQ[{a, d}, x] && LtQ[m, -1]
Int[x_^m_./(d_ + d_.*ProductLog[a_.*x_]), x_Symbol] := x^m*Gamma[m + 1, -(m + 1)*ProductLog[a*x]]/ (a*d*(m + 1)* E^(m*ProductLog[a*x])*(-(m + 1)*ProductLog[a*x])^m) /; FreeQ[{a, d, m}, x] && Not[IntegerQ[m]]
Int[1/(x_*(d_ + d_.*ProductLog[a_.*x_^n_.])), x_Symbol] := Log[ProductLog[a*x^n]]/(d*n) /; FreeQ[{a, d, n}, x]
Int[x_^m_./(d_ + d_.*ProductLog[a_.*x_^n_]), x_Symbol] := -Subst[ Int[1/(x^(m + 2)*(d + d*ProductLog[a*x^(-n)])), x], x, 1/x] /; FreeQ[{a, d}, x] && IntegerQ[m] && ILtQ[n, 0] && NeQ[m, -1]
Int[(c_.*ProductLog[a_.*x_^n_.])^ p_./(x_*(d_ + d_.*ProductLog[a_.*x_^n_.])), x_Symbol] := (c*ProductLog[a*x^n])^p/(d*n*p) /; FreeQ[{a, c, d, n, p}, x]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := c*x^(m + 1)*(c*ProductLog[a*x^n])^(p - 1)/(d*(m + 1)) /; FreeQ[{a, c, d, m, n, p}, x] && NeQ[m, -1] && EqQ[m + n*(p - 1), -1]
Int[x_^m_.* ProductLog[a_.*x_^n_.]^p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := a^p*ExpIntegralEi[-p*ProductLog[a*x^n]]/(d*n) /; FreeQ[{a, d, m, n}, x] && IntegerQ[p] && EqQ[m + n*p, -1]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^ p_/(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := a^(p - 1/2)*c^(p - 1/2)*Rt[Pi*c/(p - 1/2), 2]* Erf[Sqrt[c*ProductLog[a*x^n]]/Rt[c/(p - 1/2), 2]]/(d*n) /; FreeQ[{a, c, d, m, n}, x] && NeQ[m, -1] && IntegerQ[p - 1/2] && EqQ[m + n*(p - 1/2), -1] && PosQ[c/(p - 1/2)]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^ p_/(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := a^(p - 1/2)*c^(p - 1/2)*Rt[-Pi*c/(p - 1/2), 2]* Erfi[Sqrt[c*ProductLog[a*x^n]]/Rt[-c/(p - 1/2), 2]]/(d*n) /; FreeQ[{a, c, d, m, n}, x] && NeQ[m, -1] && IntegerQ[p - 1/2] && EqQ[m + n*(p - 1/2), -1] && NegQ[c/(p - 1/2)]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := c*x^(m + 1)*(c*ProductLog[a*x^n])^(p - 1)/(d*(m + 1)) - c*(m + n*(p - 1) + 1)/(m + 1)* Int[x^m*(c*ProductLog[a*x^n])^(p - 1)/(d + d*ProductLog[a*x^n]), x] /; FreeQ[{a, c, d, m, n, p}, x] && NeQ[m, -1] && GtQ[Simplify[p + (m + 1)/n], 1]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := x^(m + 1)*(c*ProductLog[a*x^n])^p/(d*(m + n*p + 1)) - (m + 1)/(c*(m + n*p + 1))* Int[x^m*(c*ProductLog[a*x^n])^(p + 1)/(d + d*ProductLog[a*x^n]), x] /; FreeQ[{a, c, d, m, n, p}, x] && NeQ[m, -1] && LtQ[Simplify[p + (m + 1)/n], 0]
Int[x_^m_.*(c_.*ProductLog[a_.*x_])^p_./(d_ + d_.*ProductLog[a_.*x_]), x_Symbol] := x^m*Gamma[ m + p + 1, -(m + 1)*ProductLog[a*x]]*(c*ProductLog[a*x])^p/ (a*d*(m + 1)* E^(m*ProductLog[a*x])*(-(m + 1)*ProductLog[a*x])^(m + p)) /; FreeQ[{a, c, d, m, p}, x] && NeQ[m, -1]
Int[x_^m_.*(c_.*ProductLog[a_.*x_^n_.])^ p_./(d_ + d_.*ProductLog[a_.*x_^n_.]), x_Symbol] := -Subst[ Int[(c*ProductLog[a*x^(-n)])^ p/(x^(m + 2)*(d + d*ProductLog[a*x^(-n)])), x], x, 1/x] /; FreeQ[{a, c, d, p}, x] && NeQ[m, -1] && IntegerQ[m] && LtQ[n, 0]
Int[u_, x_Symbol] := Subst[Int[ SimplifyIntegrand[(x + 1)*E^x*SubstFor[ProductLog[x], u, x], x], x], x, ProductLog[x]] /; FunctionOfQ[ProductLog[x], u, x]
