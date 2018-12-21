
(* ::Subsection::Closed:: *)
(* 7.3.2 (d x)^m (a+b arctanh(c x^n))^p *)
Int[(a_. + b_.*ArcTanh[c_.*x_])/x_, x_Symbol] := a*Log[x] - b/2*PolyLog[2, -c*x] + b/2*PolyLog[2, c*x] /; FreeQ[{a, b, c}, x]
Int[(a_. + b_.*ArcCoth[c_.*x_])/x_, x_Symbol] := a*Log[x] + b/2*PolyLog[2, -1/(c*x)] - b/2*PolyLog[2, 1/(c*x)] /; FreeQ[{a, b, c}, x]
Int[(a_. + b_.*ArcTanh[c_.*x_])^p_/x_, x_Symbol] := 2*(a + b*ArcTanh[c*x])^p*ArcTanh[1 - 2/(1 - c*x)] - 2*b*c*p* Int[(a + b*ArcTanh[c*x])^(p - 1)* ArcTanh[1 - 2/(1 - c*x)]/(1 - c^2*x^2), x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1]
Int[(a_. + b_.*ArcCoth[c_.*x_])^p_/x_, x_Symbol] := 2*(a + b*ArcCoth[c*x])^p*ArcCoth[1 - 2/(1 - c*x)] - 2*b*c*p* Int[(a + b*ArcCoth[c*x])^(p - 1)* ArcCoth[1 - 2/(1 - c*x)]/(1 - c^2*x^2), x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1]
Int[(a_. + b_.*ArcTanh[c_.*x_^n_])^p_./x_, x_Symbol] := 1/n*Subst[Int[(a + b*ArcTanh[c*x])^p/x, x], x, x^n] /; FreeQ[{a, b, c, n}, x] && IGtQ[p, 0]
Int[(a_. + b_.*ArcCoth[c_.*x_^n_])^p_./x_, x_Symbol] := 1/n*Subst[Int[(a + b*ArcCoth[c*x])^p/x, x], x, x^n] /; FreeQ[{a, b, c, n}, x] && IGtQ[p, 0]
Int[x_^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_.])^p_., x_Symbol] := x^(m + 1)*(a + b*ArcTanh[c*x^n])^p/(m + 1) - b*c*n*p/(m + 1)* Int[x^(m + n)*(a + b*ArcTanh[c*x^n])^(p - 1)/(1 - c^2*x^(2*n)), x] /; FreeQ[{a, b, c, m, n}, x] && IGtQ[p, 0] && (EqQ[p, 1] || EqQ[n, 1] && IntegerQ[m]) && NeQ[m, -1]
Int[x_^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_.])^p_., x_Symbol] := x^(m + 1)*(a + b*ArcCoth[c*x^n])^p/(m + 1) - b*c*n*p/(m + 1)* Int[x^(m + n)*(a + b*ArcCoth[c*x^n])^(p - 1)/(1 - c^2*x^(2*n)), x] /; FreeQ[{a, b, c, m, n}, x] && IGtQ[p, 0] && (EqQ[p, 1] || EqQ[n, 1] && IntegerQ[m]) && NeQ[m, -1]
Int[x_^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_])^p_., x_Symbol] := 1/n*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*ArcTanh[c*x])^p, x], x, x^n] /; FreeQ[{a, b, c, m, n}, x] && IGtQ[p, 1] && IntegerQ[Simplify[(m + 1)/n]]
Int[x_^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_])^p_., x_Symbol] := 1/n*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*ArcCoth[c*x])^p, x], x, x^n] /; FreeQ[{a, b, c, m, n}, x] && IGtQ[p, 1] && IntegerQ[Simplify[(m + 1)/n]]
Int[x_^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := Int[ExpandIntegrand[ x^m*(a + b*Log[1 + c*x^n]/2 - b*Log[1 - c*x^n]/2)^p, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0] && IntegerQ[m]
Int[x_^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := Int[ExpandIntegrand[ x^m*(a + b*Log[1 + x^(-n)/c]/2 - b*Log[1 - x^(-n)/c]/2)^p, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0] && IntegerQ[m]
Int[x_^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := With[{k = Denominator[m]}, k*Subst[Int[x^(k*(m + 1) - 1)*(a + b*ArcTanh[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0] && FractionQ[m]
Int[x_^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := With[{k = Denominator[m]}, k*Subst[Int[x^(k*(m + 1) - 1)*(a + b*ArcCoth[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0] && FractionQ[m]
Int[x_^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := Int[x^m*(a + b*ArcCoth[x^(-n)/c])^p, x] /; FreeQ[{a, b, c, m}, x] && IGtQ[p, 1] && ILtQ[n, 0]
Int[x_^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := Int[x^m*(a + b*ArcTanh[x^(-n)/c])^p, x] /; FreeQ[{a, b, c, m}, x] && IGtQ[p, 1] && ILtQ[n, 0]
Int[x_^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := With[{k = Denominator[n]}, k*Subst[Int[x^(k*(m + 1) - 1)*(a + b*ArcTanh[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c, m}, x] && IGtQ[p, 1] && FractionQ[n]
Int[x_^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := With[{k = Denominator[n]}, k*Subst[Int[x^(k*(m + 1) - 1)*(a + b*ArcCoth[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c, m}, x] && IGtQ[p, 1] && FractionQ[n]
Int[(d_*x_)^m_*(a_. + b_.*ArcTanh[c_.*x_^n_.]), x_Symbol] := (d*x)^(m + 1)*(a + b*ArcTanh[c*x^n])/(d*(m + 1)) - b*c*n/(d^n*(m + 1))*Int[(d*x)^(m + n)/(1 - c^2*x^(2*n)), x] /; FreeQ[{a, b, c, d, m, n}, x] && IntegerQ[n] && NeQ[m, -1]
Int[(d_*x_)^m_*(a_. + b_.*ArcCoth[c_.*x_^n_.]), x_Symbol] := (d*x)^(m + 1)*(a + b*ArcCoth[c*x^n])/(d*(m + 1)) - b*c*n/(d^n*(m + 1))*Int[(d*x)^(m + n)/(1 - c^2*x^(2*n)), x] /; FreeQ[{a, b, c, d, m, n}, x] && IntegerQ[n] && NeQ[m, -1]
Int[(d_*x_)^m_*(a_. + b_.*ArcTanh[c_.*x_^n_.])^p_., x_Symbol] := d^IntPart[m]*(d*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*ArcTanh[c*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n}, x] && IGtQ[p, 0] && (EqQ[p, 1] || RationalQ[m, n])
Int[(d_*x_)^m_*(a_. + b_.*ArcCoth[c_.*x_^n_.])^p_., x_Symbol] := d^IntPart[m]*(d*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*ArcCoth[c*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n}, x] && IGtQ[p, 0] && (EqQ[p, 1] || RationalQ[m, n])
Int[(d_.*x_)^m_.*(a_. + b_.*ArcTanh[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[(d*x)^m*(a + b*ArcTanh[c*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n, p}, x]
Int[(d_.*x_)^m_.*(a_. + b_.*ArcCoth[c_.*x_^n_.])^p_., x_Symbol] := Unintegrable[(d*x)^m*(a + b*ArcCoth[c*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n, p}, x]
