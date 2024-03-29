
(* ::Subsection::Closed:: *)
(* 8.3 Exponential integral functions *)
Int[ExpIntegralE[n_, a_. + b_.*x_], x_Symbol] := -ExpIntegralE[n + 1, a + b*x]/b /; FreeQ[{a, b, n}, x]
Int[x_^m_.*ExpIntegralE[n_, b_.*x_], x_Symbol] := -x^m*ExpIntegralE[n + 1, b*x]/b + m/b*Int[x^(m - 1)*ExpIntegralE[n + 1, b*x], x] /; FreeQ[b, x] && EqQ[m + n, 0] && IGtQ[m, 0]
Int[ExpIntegralE[1, b_.*x_]/x_, x_Symbol] := b*x*HypergeometricPFQ[{1, 1, 1}, {2, 2, 2}, -b*x] - EulerGamma*Log[x] - 1/2*Log[b*x]^2 /; FreeQ[b, x]
Int[x_^m_*ExpIntegralE[n_, b_.*x_], x_Symbol] := x^(m + 1)*ExpIntegralE[n, b*x]/(m + 1) + b/(m + 1)*Int[x^(m + 1)*ExpIntegralE[n - 1, b*x], x] /; FreeQ[b, x] && EqQ[m + n, 0] && ILtQ[m, -1]
Int[(d_.*x_)^m_*ExpIntegralE[n_, b_.*x_], x_Symbol] := (d*x)^m*Gamma[m + 1]*Log[x]/(b*(b*x)^m) - (d*x)^(m + 1)* HypergeometricPFQ[{m + 1, m + 1}, {m + 2, m + 2}, -b* x]/(d*(m + 1)^2) /; FreeQ[{b, d, m, n}, x] && EqQ[m + n, 0] && Not[IntegerQ[m]]
Int[(d_.*x_)^m_.*ExpIntegralE[n_, b_.*x_], x_Symbol] := (d*x)^(m + 1)*ExpIntegralE[n, b*x]/(d*(m + n)) - (d*x)^(m + 1)* ExpIntegralE[-m, b*x]/(d*(m + n)) /; FreeQ[{b, d, m, n}, x] && NeQ[m + n, 0]
Int[(c_. + d_.*x_)^m_.*ExpIntegralE[n_, a_ + b_.*x_], x_Symbol] := -(c + d*x)^m*ExpIntegralE[n + 1, a + b*x]/b + d*m/b*Int[(c + d*x)^(m - 1)*ExpIntegralE[n + 1, a + b*x], x] /; FreeQ[{a, b, c, d, m, n}, x] && (IGtQ[m, 0] || ILtQ[n, 0] || GtQ[m, 0] && LtQ[n, -1])
Int[(c_. + d_.*x_)^m_.*ExpIntegralE[n_, a_ + b_.*x_], x_Symbol] := (c + d*x)^(m + 1)*ExpIntegralE[n, a + b*x]/(d*(m + 1)) + b/(d*(m + 1))* Int[(c + d*x)^(m + 1)*ExpIntegralE[n - 1, a + b*x], x] /; FreeQ[{a, b, c, d, m, n}, x] && (IGtQ[n, 0] || LtQ[m, -1] && GtQ[n, 0]) && NeQ[m, -1]
Int[(c_. + d_.*x_)^m_.*ExpIntegralE[n_, a_ + b_.*x_], x_Symbol] := Unintegrable[(c + d*x)^m*ExpIntegralE[n, a + b*x], x] /; FreeQ[{a, b, c, d, m, n}, x]
Int[ExpIntegralEi[a_. + b_.*x_], x_Symbol] := (a + b*x)*ExpIntegralEi[a + b*x]/b - E^(a + b*x)/b /; FreeQ[{a, b}, x]
Int[ExpIntegralEi[b_.*x_]/x_, x_Symbol] := Log[x]*(ExpIntegralEi[b*x] + ExpIntegralE[1, -b*x]) - Int[ExpIntegralE[1, -b*x]/x, x] /; FreeQ[b, x]
Int[ExpIntegralEi[a_. + b_.*x_]/(c_. + d_.*x_), x_Symbol] := Unintegrable[ExpIntegralEi[a + b*x]/(c + d*x), x] /; FreeQ[{a, b, c, d}, x]
Int[(c_. + d_.*x_)^m_.*ExpIntegralEi[a_. + b_.*x_], x_Symbol] := (c + d*x)^(m + 1)*ExpIntegralEi[a + b*x]/(d*(m + 1)) - b/(d*(m + 1))*Int[(c + d*x)^(m + 1)*E^(a + b*x)/(a + b*x), x] /; FreeQ[{a, b, c, d, m}, x] && NeQ[m, -1]
Int[ExpIntegralEi[a_. + b_.*x_]^2, x_Symbol] := (a + b*x)*ExpIntegralEi[a + b*x]^2/b - 2*Int[E^(a + b*x)*ExpIntegralEi[a + b*x], x] /; FreeQ[{a, b}, x]
Int[x_^m_.*ExpIntegralEi[b_.*x_]^2, x_Symbol] := x^(m + 1)*ExpIntegralEi[b*x]^2/(m + 1) - 2/(m + 1)*Int[x^m*E^(b*x)*ExpIntegralEi[b*x], x] /; FreeQ[b, x] && IGtQ[m, 0]
Int[x_^m_.*ExpIntegralEi[a_ + b_.*x_]^2, x_Symbol] := x^(m + 1)*ExpIntegralEi[a + b*x]^2/(m + 1) + a*x^m*ExpIntegralEi[a + b*x]^2/(b*(m + 1)) - 2/(m + 1)*Int[x^m*E^(a + b*x)*ExpIntegralEi[a + b*x], x] - a*m/(b*(m + 1))*Int[x^(m - 1)*ExpIntegralEi[a + b*x]^2, x] /; FreeQ[{a, b}, x] && IGtQ[m, 0]
(* Int[x_^m_.*ExpIntegralEi[a_+b_.*x_]^2,x_Symbol] := b*x^(m+2)*ExpIntegralEi[a+b*x]^2/(a*(m+1)) + x^(m+1)*ExpIntegralEi[a+b*x]^2/(m+1) - 2*b/(a*(m+1))*Int[x^(m+1)*E^(a+b*x)*ExpIntegralEi[a+b*x],x] - b*(m+2)/(a*(m+1))*Int[x^(m+1)*ExpIntegralEi[a+b*x]^2,x] /; FreeQ[{a,b},x] && ILtQ[m,-2] *)
Int[E^(a_. + b_.*x_)*ExpIntegralEi[c_. + d_.*x_], x_Symbol] := E^(a + b*x)*ExpIntegralEi[c + d*x]/b - d/b*Int[E^(a + c + (b + d)*x)/(c + d*x), x] /; FreeQ[{a, b, c, d}, x]
Int[x_^m_.*E^(a_. + b_.*x_)*ExpIntegralEi[c_. + d_.*x_], x_Symbol] := x^m*E^(a + b*x)*ExpIntegralEi[c + d*x]/b - d/b*Int[x^m*E^(a + c + (b + d)*x)/(c + d*x), x] - m/b*Int[x^(m - 1)*E^(a + b*x)*ExpIntegralEi[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && IGtQ[m, 0]
Int[x_^m_*E^(a_. + b_.*x_)*ExpIntegralEi[c_. + d_.*x_], x_Symbol] := x^(m + 1)*E^(a + b*x)*ExpIntegralEi[c + d*x]/(m + 1) - d/(m + 1)*Int[x^(m + 1)*E^(a + c + (b + d)*x)/(c + d*x), x] - b/(m + 1)*Int[x^(m + 1)*E^(a + b*x)*ExpIntegralEi[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[m, -1]
Int[ExpIntegralEi[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol] := x*ExpIntegralEi[d*(a + b*Log[c*x^n])] - b*n*E^(a*d)*Int[(c*x^n)^(b*d)/(a + b*Log[c*x^n]), x] /; FreeQ[{a, b, c, d, n}, x]
Int[ExpIntegralEi[d_.*(a_. + b_.*Log[c_.*x_^n_.])]/x_, x_Symbol] := 1/n*Subst[ExpIntegralEi[d*(a + b*x)], x, Log[c*x^n]] /; FreeQ[{a, b, c, d, n}, x]
Int[(e_.*x_)^m_.*ExpIntegralEi[d_.*(a_. + b_.*Log[c_.*x_^n_.])], x_Symbol] := (e*x)^(m + 1)*ExpIntegralEi[d*(a + b*Log[c*x^n])]/(e*(m + 1)) - b*n*E^(a*d)*(c*x^n)^(b*d)/((m + 1)*(e*x)^(b*d*n))* Int[(e*x)^(m + b*d*n)/(a + b*Log[c*x^n]), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && NeQ[m, -1]
Int[LogIntegral[a_. + b_.*x_], x_Symbol] := (a + b*x)*LogIntegral[a + b*x]/b - ExpIntegralEi[2*Log[a + b*x]]/b /; FreeQ[{a, b}, x]
Int[LogIntegral[b_.*x_]/x_, x_Symbol] := -b*x + Log[b*x]*LogIntegral[b*x] /; FreeQ[b, x]
Int[LogIntegral[a_. + b_.*x_]/(c_. + d_.*x_), x_Symbol] := Unintegrable[LogIntegral[a + b*x]/(c + d*x), x] /; FreeQ[{a, b, c, d}, x]
Int[(c_. + d_.*x_)^m_.*LogIntegral[a_. + b_.*x_], x_Symbol] := (c + d*x)^(m + 1)*LogIntegral[a + b*x]/(d*(m + 1)) - b/(d*(m + 1))*Int[(c + d*x)^(m + 1)/Log[a + b*x], x] /; FreeQ[{a, b, c, d, m}, x] && NeQ[m, -1]
