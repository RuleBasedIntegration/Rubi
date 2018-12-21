
(* ::Subsection::Closed:: *)
(* 7.2.2 (d x)^m (a+b arccosh(c x))^n *)
Int[(a_. + b_.*ArcCosh[c_.*x_])^n_./x_, x_Symbol] := 1/b*Subst[Int[x^n*Tanh[-a/b + x/b], x], x, a + b*ArcCosh[c*x]] /; FreeQ[{a, b, c}, x] && IGtQ[n, 0]
Int[(d_.*x_)^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol] := (d*x)^(m + 1)*(a + b*ArcCosh[c*x])^n/(d*(m + 1)) - b*c*n/(d*(m + 1))* Int[(d*x)^(m + 1)*(a + b*ArcCosh[c*x])^(n - 1)/(Sqrt[1 + c*x]* Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[n, 0] && NeQ[m, -1]
Int[x_^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol] := x^(m + 1)*(a + b*ArcCosh[c*x])^n/(m + 1) - b*c*n/(m + 1)* Int[x^(m + 1)*(a + b*ArcCosh[c*x])^(n - 1)/(Sqrt[1 + c*x]* Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && GtQ[n, 0]
Int[x_^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol] := x^m*Sqrt[1 + c*x]* Sqrt[-1 + c*x]*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1)) + 1/(b^2*c^(m + 1)*(n + 1))* Subst[ Int[ExpandTrigReduce[x^(n + 1), Cosh[-a/b + x/b]^(m - 1)*(m - (m + 1)*Cosh[-a/b + x/b]^2), x], x], x, a + b*ArcCosh[c*x]] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && GeQ[n, -2] && LtQ[n, -1]
Int[x_^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol] := x^m*Sqrt[1 + c*x]* Sqrt[-1 + c*x]*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1)) + m/(b*c*(n + 1))* Int[x^(m - 1)*(a + b*ArcCosh[c*x])^(n + 1)/(Sqrt[1 + c*x]* Sqrt[-1 + c*x]), x] - c*(m + 1)/(b*(n + 1))* Int[x^(m + 1)*(a + b*ArcCosh[c*x])^(n + 1)/(Sqrt[1 + c*x]* Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && LtQ[n, -2]
Int[x_^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol] := 1/(b*c^(m + 1))* Subst[Int[x^n*Cosh[-a/b + x/b]^m*Sinh[-a/b + x/b], x], x, a + b*ArcCosh[c*x]] /; FreeQ[{a, b, c, n}, x] && IGtQ[m, 0]
Int[(d_.*x_)^m_.*(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol] := Unintegrable[(d*x)^m*(a + b*ArcCosh[c*x])^n, x] /; FreeQ[{a, b, c, d, m, n}, x]
