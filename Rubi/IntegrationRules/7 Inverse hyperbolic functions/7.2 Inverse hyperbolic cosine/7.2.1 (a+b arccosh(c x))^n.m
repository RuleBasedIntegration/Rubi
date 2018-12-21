
(* ::Subsection::Closed:: *)
(* 7.2.1 (a+b arccosh(c x))^n *)
Int[(a_. + b_.*ArcCosh[c_.*x_])^n_., x_Symbol] := x*(a + b*ArcCosh[c*x])^n - b*c*n* Int[x*(a + b*ArcCosh[c*x])^(n - 1)/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c}, x] && GtQ[n, 0]
Int[(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol] := Sqrt[1 + c*x]* Sqrt[-1 + c*x]*(a + b*ArcCosh[c*x])^(n + 1)/(b*c*(n + 1)) - c/(b*(n + 1))* Int[x*(a + b*ArcCosh[c*x])^(n + 1)/(Sqrt[1 + c*x]*Sqrt[-1 + c*x]), x] /; FreeQ[{a, b, c}, x] && LtQ[n, -1]
Int[(a_. + b_.*ArcCosh[c_.*x_])^n_, x_Symbol] := 1/(b*c)*Subst[Int[x^n*Sinh[-a/b + x/b], x], x, a + b*ArcCosh[c*x]] /; FreeQ[{a, b, c, n}, x]
