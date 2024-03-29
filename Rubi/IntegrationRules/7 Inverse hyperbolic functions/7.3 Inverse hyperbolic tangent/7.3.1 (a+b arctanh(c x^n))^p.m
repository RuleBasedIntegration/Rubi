
(* ::Subsection::Closed:: *)
(* 7.3.1 (a+b arctanh(c x^n))^p *)
Int[(a_. + b_.*ArcTanh[c_.*x_^n_.])^p_., x_Symbol] := x*(a + b*ArcTanh[c*x^n])^p - b*c*n*p* Int[x^n*(a + b*ArcTanh[c*x^n])^(p - 1)/(1 - c^2*x^(2*n)), x] /; FreeQ[{a, b, c, n}, x] && IGtQ[p, 0] && (EqQ[n, 1] || EqQ[p, 1])
Int[(a_. + b_.*ArcCoth[c_.*x_^n_.])^p_., x_Symbol] := x*(a + b*ArcCoth[c*x^n])^p - b*c*n*p* Int[x^n*(a + b*ArcCoth[c*x^n])^(p - 1)/(1 - c^2*x^(2*n)), x] /; FreeQ[{a, b, c, n}, x] && IGtQ[p, 0] && (EqQ[n, 1] || EqQ[p, 1])
Int[(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := Int[ExpandIntegrand[(a + b*Log[1 + c*x^n]/2 - b*Log[1 - c*x^n]/2)^ p, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0]
Int[(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := Int[ExpandIntegrand[(a + b*Log[1 + x^(-n)/c]/2 - b*Log[1 - x^(-n)/c]/2)^p, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0]
Int[(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := Int[(a + b*ArcCoth[x^(-n)/c])^p, x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && ILtQ[n, 0]
Int[(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := Int[(a + b*ArcTanh[x^(-n)/c])^p, x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && ILtQ[n, 0]
Int[(a_. + b_.*ArcTanh[c_.*x_^n_])^p_, x_Symbol] := With[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*ArcTanh[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && FractionQ[n]
Int[(a_. + b_.*ArcCoth[c_.*x_^n_])^p_, x_Symbol] := With[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*ArcCoth[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && FractionQ[n]
Int[(a_. + b_.*ArcTanh[c_.*x_^n_.])^p_, x_Symbol] := Unintegrable[(a + b*ArcTanh[c*x^n])^p, x] /; FreeQ[{a, b, c, n, p}, x]
Int[(a_. + b_.*ArcCoth[c_.*x_^n_.])^p_, x_Symbol] := Unintegrable[(a + b*ArcCoth[c*x^n])^p, x] /; FreeQ[{a, b, c, n, p}, x]
