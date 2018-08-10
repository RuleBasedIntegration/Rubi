
(* ::Section:: *)
(* 5.1.2 (d x)^m (a+b arcsin(c x))^n *)

(* ::Subsection::Closed:: *)
(* 5.1.2 (d x)^m (a+b arcsin(c x))^n *)
Int[((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_.)/(x_), x_Symbol] := Subst[Int[(a + b*x)^n/Tan[x], x], x, ArcSin[c*x]] /; FreeQ[{a, b, c}, x] && IGtQ[n, 0]
Int[((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_.)/(x_), x_Symbol] := -Subst[Int[(a + b*x)^n/Cot[x], x], x, ArcCos[c*x]] /; FreeQ[{a, b, c}, x] && IGtQ[n, 0]
Int[((d_.)*(x_))^(m_.)*((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_.), x_Symbol] := (d*x)^(m + 1)*((a + b*ArcSin[c*x])^n/(d*(m + 1))) - b*c*(n/(d*(m + 1)))*Int[(d*x)^(m + 1)*((a + b*ArcSin[c*x])^(n - 1)/Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[n, 0] && NeQ[m, -1]
Int[((d_.)*(x_))^(m_.)*((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_.), x_Symbol] := (d*x)^(m + 1)*((a + b*ArcCos[c*x])^n/(d*(m + 1))) + b*c*(n/(d*(m + 1)))*Int[(d*x)^(m + 1)*((a + b*ArcCos[c*x])^(n - 1)/Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[n, 0] && NeQ[m, -1]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_), x_Symbol] := x^(m + 1)*((a + b*ArcSin[c*x])^n/(m + 1)) - b*c*(n/(m + 1))*Int[x^(m + 1)*((a + b*ArcSin[c*x])^(n - 1)/Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && GtQ[n, 0]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_), x_Symbol] := x^(m + 1)*((a + b*ArcCos[c*x])^n/(m + 1)) + b*c*(n/(m + 1))*Int[x^(m + 1)*((a + b*ArcCos[c*x])^(n - 1)/Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && GtQ[n, 0]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_), x_Symbol] := x^m*Sqrt[1 - c^2*x^2]*((a + b*ArcSin[c*x])^(n + 1)/(b*c*(n + 1))) - (1/(b*c^(m + 1)*(n + 1)))*Subst[Int[ExpandTrigReduce[(a + b*x)^(n + 1), Sin[x]^(m - 1)*(m - (m + 1)*Sin[x]^2), x], x], x, ArcSin[c*x]] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && GeQ[n, -2] && LtQ[n, -1]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_), x_Symbol] := (-x^m)*Sqrt[1 - c^2*x^2]*((a + b*ArcCos[c*x])^(n + 1)/(b*c*(n + 1))) - (1/(b*c^(m + 1)*(n + 1)))*Subst[Int[ExpandTrigReduce[(a + b*x)^(n + 1), Cos[x]^(m - 1)*(m - (m + 1)*Cos[x]^2), x], x], x, ArcCos[c*x]] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && GeQ[n, -2] && LtQ[n, -1]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_), x_Symbol] := x^m*Sqrt[1 - c^2*x^2]*((a + b*ArcSin[c*x])^(n + 1)/(b*c*(n + 1))) - (m/(b*c*(n + 1)))*Int[x^(m - 1)*((a + b*ArcSin[c*x])^(n + 1)/Sqrt[1 - c^2*x^2]), x] + c*((m + 1)/(b*(n + 1)))*Int[x^(m + 1)*((a + b*ArcSin[c*x])^(n + 1)/Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && LtQ[n, -2]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_), x_Symbol] := (-x^m)*Sqrt[1 - c^2*x^2]*((a + b*ArcCos[c*x])^(n + 1)/(b*c*(n + 1))) + (m/(b*c*(n + 1)))*Int[x^(m - 1)*((a + b*ArcCos[c*x])^(n + 1)/Sqrt[1 - c^2*x^2]), x] - c*((m + 1)/(b*(n + 1)))*Int[x^(m + 1)*((a + b*ArcCos[c*x])^(n + 1)/Sqrt[1 - c^2*x^2]), x] /; FreeQ[{a, b, c}, x] && IGtQ[m, 0] && LtQ[n, -2]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_), x_Symbol] := (1/c^(m + 1))*Subst[Int[(a + b*x)^n*Sin[x]^m*Cos[x], x], x, ArcSin[c*x]] /; FreeQ[{a, b, c, n}, x] && IGtQ[m, 0]
Int[(x_)^(m_.)*((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_), x_Symbol] := (-(c^(m + 1))^(-1))*Subst[Int[(a + b*x)^n*Cos[x]^m*Sin[x], x], x, ArcCos[c*x]] /; FreeQ[{a, b, c, n}, x] && IGtQ[m, 0]
Int[((d_.)*(x_))^(m_.)*((a_.) + (b_.)*ArcSin[(c_.)*(x_)])^(n_.), x_Symbol] := Unintegrable[(d*x)^m*(a + b*ArcSin[c*x])^n, x] /; FreeQ[{a, b, c, d, m, n}, x]
Int[((d_.)*(x_))^(m_.)*((a_.) + (b_.)*ArcCos[(c_.)*(x_)])^(n_.), x_Symbol] := Unintegrable[(d*x)^m*(a + b*ArcCos[c*x])^n, x] /; FreeQ[{a, b, c, d, m, n}, x]