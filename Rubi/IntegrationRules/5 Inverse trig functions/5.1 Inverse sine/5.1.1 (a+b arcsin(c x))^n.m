
(* ::Subsection::Closed:: *)
(* 5.1.1 (a+b arcsin(c x))^n *)
Int[(a_. + b_.*ArcSin[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["df0bca10"]] := x*(a + b*ArcSin[c*x])^n - b*c*n*Int[x*(a + b*ArcSin[c*x])^(n - 1)/Sqrt[1 - c^2*x^2], x] /; FreeQ[{a, b, c}, x] && GtQ[n, 0]
Int[(a_. + b_.*ArcCos[c_.*x_])^n_., x_Symbol, _:RubiNotebookReference["dd4d7449"]] := x*(a + b*ArcCos[c*x])^n + b*c*n*Int[x*(a + b*ArcCos[c*x])^(n - 1)/Sqrt[1 - c^2*x^2], x] /; FreeQ[{a, b, c}, x] && GtQ[n, 0]
Int[(a_. + b_.*ArcSin[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["dc8f1e7e"]] := Sqrt[1 - c^2*x^2]*(a + b*ArcSin[c*x])^(n + 1)/(b*c*(n + 1)) + c/(b*(n + 1))* Int[x*(a + b*ArcSin[c*x])^(n + 1)/Sqrt[1 - c^2*x^2], x] /; FreeQ[{a, b, c}, x] && LtQ[n, -1]
Int[(a_. + b_.*ArcCos[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["d9c008fb"]] := -Sqrt[ 1 - c^2*x^2]*(a + b*ArcCos[c*x])^(n + 1)/(b*c*(n + 1)) - c/(b*(n + 1))* Int[x*(a + b*ArcCos[c*x])^(n + 1)/Sqrt[1 - c^2*x^2], x] /; FreeQ[{a, b, c}, x] && LtQ[n, -1]
Int[(a_. + b_.*ArcSin[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["d80262cc"]] := 1/(b*c)*Subst[Int[x^n*Cos[-a/b + x/b], x], x, a + b*ArcSin[c*x]] /; FreeQ[{a, b, c, n}, x]
Int[(a_. + b_.*ArcCos[c_.*x_])^n_, x_Symbol, _:RubiNotebookReference["da44dc95"]] := -1/(b*c)* Subst[Int[x^n*Sin[-a/b + x/b], x], x, a + b*ArcCos[c*x]] /; FreeQ[{a, b, c, n}, x]
