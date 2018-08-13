
(* ::Subsection::Closed:: *)
(* 4.3.1.1 (a+b tan)^n *)
Int[(b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := b*(b*Tan[c + d*x])^(n - 1)/(d*(n - 1)) - b^2*Int[(b*Tan[c + d*x])^(n - 2), x] /; FreeQ[{b, c, d}, x] && GtQ[n, 1]
Int[(b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := (b*Tan[c + d*x])^(n + 1)/(b*d*(n + 1)) - 1/b^2*Int[(b*Tan[c + d*x])^(n + 2), x] /; FreeQ[{b, c, d}, x] && LtQ[n, -1]
Int[tan[c_. + d_.*x_], x_Symbol] := -Log[RemoveContent[Cos[c + d*x], x]]/d /; FreeQ[{c, d}, x]
(* Int[1/tan[c_.+d_.*x_],x_Symbol] :=  Log[RemoveContent[Sin[c+d*x],x]]/d /; FreeQ[{c,d},x] *)
Int[(b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := b/d*Subst[Int[x^n/(b^2 + x^2), x], x, b*Tan[c + d*x]] /; FreeQ[{b, c, d, n}, x] && Not[IntegerQ[n]]
Int[(a_ + b_.*tan[c_. + d_.*x_])^2, x_Symbol] := (a^2 - b^2)*x + b^2*Tan[c + d*x]/d + 2*a*b*Int[Tan[c + d*x], x] /; FreeQ[{a, b, c, d}, x]
(* Int[(a_+b_.*tan[c_.+d_.*x_])^n_,x_Symbol] :=  Int[ExpandIntegrand[(a+b*Tan[c+d*x])^n,x],x] /; FreeQ[{a,b,c,d},x] &&  IGtQ[n,0] *)
Int[(a_ + b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := b*(a + b*Tan[c + d*x])^(n - 1)/(d*(n - 1)) + 2*a*Int[(a + b*Tan[c + d*x])^(n - 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 + b^2, 0] && GtQ[n, 1]
Int[(a_ + b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := a*(a + b*Tan[c + d*x])^n/(2*b*d*n) + 1/(2*a)*Int[(a + b*Tan[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 + b^2, 0] && LtQ[n, 0]
Int[Sqrt[a_ + b_.*tan[c_. + d_.*x_]], x_Symbol] := -2*b/d* Subst[Int[1/(2*a - x^2), x], x, Sqrt[a + b*Tan[c + d*x]]] /; FreeQ[{a, b, c, d}, x] && EqQ[a^2 + b^2, 0]
Int[(a_ + b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := -b/d* Subst[Int[(a + x)^(n - 1)/(a - x), x], x, b*Tan[c + d*x]] /; FreeQ[{a, b, c, d, n}, x] && EqQ[a^2 + b^2, 0]
Int[(a_ + b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := b*(a + b*Tan[c + d*x])^(n - 1)/(d*(n - 1)) + Int[(a^2 - b^2 + 2*a*b*Tan[c + d*x])*(a + b*Tan[c + d*x])^(n - 2), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && GtQ[n, 1]
Int[(a_ + b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := b*(a + b*Tan[c + d*x])^(n + 1)/(d*(n + 1)*(a^2 + b^2)) + 1/(a^2 + b^2)* Int[(a - b*Tan[c + d*x])*(a + b*Tan[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0] && LtQ[n, -1]
Int[1/(a_ + b_.*tan[c_. + d_.*x_]), x_Symbol] := a*x/(a^2 + b^2) + b/(a^2 + b^2)*Int[(b - a*Tan[c + d*x])/(a + b*Tan[c + d*x]), x] /; FreeQ[{a, b, c, d}, x] && NeQ[a^2 + b^2, 0]
Int[(a_ + b_.*tan[c_. + d_.*x_])^n_, x_Symbol] := b/d*Subst[Int[(a + x)^n/(b^2 + x^2), x], x, b*Tan[c + d*x]] /; FreeQ[{a, b, c, d, n}, x] && NeQ[a^2 + b^2, 0]
