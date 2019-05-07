
(* ::Subsection::Closed:: *)
(* 5.3.1 (a+b arctan(c x^n))^p *)
Int[(a_. + b_.*ArcTan[c_.*x_^n_.])^p_., x_Symbol, _:RubiNotebookReference["4f14855a"]] := x*(a + b*ArcTan[c*x^n])^p - b*c*n*p* Int[x^n*(a + b*ArcTan[c*x^n])^(p - 1)/(1 + c^2*x^(2*n)), x] /; FreeQ[{a, b, c, n}, x] && IGtQ[p, 0] && (EqQ[n, 1] || EqQ[p, 1])
Int[(a_. + b_.*ArcCot[c_.*x_^n_.])^p_., x_Symbol, _:RubiNotebookReference["4d523b03"]] := x*(a + b*ArcCot[c*x^n])^p + b*c*n*p* Int[x^n*(a + b*ArcCot[c*x^n])^(p - 1)/(1 + c^2*x^(2*n)), x] /; FreeQ[{a, b, c, n}, x] && IGtQ[p, 0] && (EqQ[n, 1] || EqQ[p, 1])
Int[(a_. + b_.*ArcTan[c_.*x_^n_])^p_, x_Symbol, _:RubiNotebookReference["4c905134"]] := Int[ExpandIntegrand[(a + (I*b*Log[1 - I*c*x^n])/ 2 - (I*b*Log[1 + I*c*x^n])/2)^p, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0]
Int[(a_. + b_.*ArcCot[c_.*x_^n_])^p_, x_Symbol, _:RubiNotebookReference["49df47b1"]] := Int[ExpandIntegrand[(a + (I*b*Log[1 - I*x^(-n)/c])/ 2 - (I*b*Log[1 + I*x^(-n)/c])/2)^p, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && IGtQ[n, 0]
Int[(a_. + b_.*ArcTan[c_.*x_^n_])^p_, x_Symbol, _:RubiNotebookReference["481d2d86"]] := Int[(a + b*ArcCot[x^(-n)/c])^p, x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && ILtQ[n, 0]
Int[(a_. + b_.*ArcCot[c_.*x_^n_])^p_, x_Symbol, _:RubiNotebookReference["4a5b93df"]] := Int[(a + b*ArcTan[x^(-n)/c])^p, x] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && ILtQ[n, 0]
Int[(a_. + b_.*ArcTan[c_.*x_^n_])^p_, x_Symbol, _:RubiNotebookReference["4b99f9e8"]] := With[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*ArcTan[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && FractionQ[n]
Int[(a_. + b_.*ArcCot[c_.*x_^n_])^p_, x_Symbol, _:RubiNotebookReference["40c5bed5"]] := With[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*ArcCot[c*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c}, x] && IGtQ[p, 1] && FractionQ[n]
Int[(a_. + b_.*ArcTan[c_.*x_^n_.])^p_, x_Symbol, _:RubiNotebookReference["4107d4e2"]] := Unintegrable[(a + b*ArcTan[c*x^n])^p, x] /; FreeQ[{a, b, c, n, p}, x]
Int[(a_. + b_.*ArcCot[c_.*x_^n_.])^p_, x_Symbol, _:RubiNotebookReference["c2636d8"]] := Unintegrable[(a + b*ArcCot[c*x^n])^p, x] /; FreeQ[{a, b, c, n, p}, x]
