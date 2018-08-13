
(* ::Subsection::Closed:: *)
(* 1.1.1.2 (a+b x)^m (c+d x)^n *)
Int[(a_ + b_.*x_)^m_.*(c_ + d_.*x_), x_Symbol] := d*x*(a + b*x)^(m + 1)/(b*(m + 2)) /; FreeQ[{a, b, c, d, m}, x] && EqQ[a*d - b*c*(m + 2), 0]
Int[1/((a_ + b_.*x_)*(c_ + d_.*x_)), x_Symbol] := Int[1/(a*c + b*d*x^2), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0]
Int[1/((a_. + b_.*x_)*(c_. + d_.*x_)), x_Symbol] := b/(b*c - a*d)*Int[1/(a + b*x), x] - d/(b*c - a*d)*Int[1/(c + d*x), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0]
Int[(a_. + b_.*x_)^m_.*(c_. + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)*(c + d*x)^(n + 1)/((b*c - a*d)*(m + 1)) /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[b*c - a*d, 0] && EqQ[m + n + 2, 0] && NeQ[m, -1]
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^m_, x_Symbol] := x*(a + b*x)^m*(c + d*x)^m/(2*m + 1) + 2*a*c*m/(2*m + 1)*Int[(a + b*x)^(m - 1)*(c + d*x)^(m - 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0] && IGtQ[m + 1/2, 0]
Int[1/((a_ + b_.*x_)^(3/2)*(c_ + d_.*x_)^(3/2)), x_Symbol] := x/(a*c*Sqrt[a + b*x]*Sqrt[c + d*x]) /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0]
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^m_, x_Symbol] := -x*(a + b*x)^(m + 1)*(c + d*x)^(m + 1)/(2*a* c*(m + 1)) + (2*m + 3)/(2*a*c*(m + 1))* Int[(a + b*x)^(m + 1)*(c + d*x)^(m + 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0] && ILtQ[m + 3/2, 0]
Int[(a_ + b_.*x_)^m_.*(c_ + d_.*x_)^m_., x_Symbol] := Int[(a*c + b*d*x^2)^m, x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[b*c + a*d, 0] && (IntegerQ[m] || GtQ[a, 0] && GtQ[c, 0])
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^m_, x_Symbol] := (a + b*x)^ FracPart[m]*(c + d*x)^FracPart[m]/(a*c + b*d*x^2)^FracPart[m]* Int[(a*c + b*d*x^2)^m, x] /; FreeQ[{a, b, c, d, m}, x] && EqQ[b*c + a*d, 0] && Not[IntegerQ[2*m]]
Int[(a_. + b_.*x_)^m_.*(c_. + d_.*x_)^n_., x_Symbol] := Int[ExpandIntegrand[(a + b*x)^m*(c + d*x)^n, x], x] /; FreeQ[{a, b, c, d, n}, x] && NeQ[b*c - a*d, 0] && IGtQ[m, 0] && (Not[IntegerQ[n]] || EqQ[c, 0] && LeQ[7*m + 4*n + 4, 0] || LtQ[9*m + 5*(n + 1), 0] || GtQ[m + n + 2, 0])
Int[(a_ + b_.*x_)^m_.*(c_. + d_.*x_)^n_., x_Symbol] := Int[ExpandIntegrand[(a + b*x)^m*(c + d*x)^n, x], x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && ILtQ[m, 0] && IntegerQ[n] && Not[IGtQ[n, 0] && LtQ[m + n + 2, 0]]
Int[(a_. + b_.*x_)^m_*(c_. + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)*(c + d*x)^(n + 1)/((b*c - a*d)*(m + 1)) - d*Simplify[m + n + 2]/((b*c - a*d)*(m + 1))* Int[(a + b*x)^Simplify[m + 1]*(c + d*x)^n, x] /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[b*c - a*d, 0] && ILtQ[Simplify[m + n + 2], 0] && NeQ[m, -1] && Not[LtQ[m, -1] && LtQ[n, -1] && (EqQ[a, 0] || NeQ[c, 0] && LtQ[m - n, 0] && IntegerQ[n])] && (SumSimplerQ[m, 1] || Not[SumSimplerQ[n, 1]])
Int[1/((a_ + b_.*x_)^(9/4)*(c_ + d_.*x_)^(1/4)), x_Symbol] := -4/(5*b*(a + b*x)^(5/4)*(c + d*x)^(1/4)) - d/(5*b)*Int[1/((a + b*x)^(5/4)*(c + d*x)^(5/4)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0] && NegQ[a^2*b^2]
Int[(a_. + b_.*x_)^m_*(c_. + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)*(c + d*x)^n/(b*(m + 1)) - d*n/(b*(m + 1))*Int[(a + b*x)^(m + 1)*(c + d*x)^(n - 1), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && GtQ[n, 0] && LtQ[m, -1] && Not[IntegerQ[n] && Not[IntegerQ[m]]] && Not[ILeQ[m + n + 2, 0] && (FractionQ[m] || GeQ[2*n + m + 1, 0])] && IntLinearQ[a, b, c, d, m, n, x]
Int[1/((a_ + b_.*x_)^(5/4)*(c_ + d_.*x_)^(1/4)), x_Symbol] := -2/(b*(a + b*x)^(1/4)*(c + d*x)^(1/4)) + c*Int[1/((a + b*x)^(5/4)*(c + d*x)^(5/4)), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0] && NegQ[a^2*b^2]
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)*(c + d*x)^n/(b*(m + n + 1)) + 2*c*n/(m + n + 1)*Int[(a + b*x)^m*(c + d*x)^(n - 1), x] /; FreeQ[{a, b, c, d}, x] && EqQ[b*c + a*d, 0] && IGtQ[m + 1/2, 0] && IGtQ[n + 1/2, 0] && LtQ[m, n]
Int[(a_. + b_.*x_)^m_*(c_. + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)*(c + d*x)^n/(b*(m + n + 1)) + n*(b*c - a*d)/(b*(m + n + 1))* Int[(a + b*x)^m*(c + d*x)^(n - 1), x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && GtQ[n, 0] && NeQ[m + n + 1, 0] && Not[IGtQ[m, 0] && (Not[IntegerQ[n]] || GtQ[m, 0] && LtQ[m - n, 0])] && Not[ILtQ[m + n + 2, 0]] && IntLinearQ[a, b, c, d, m, n, x]
Int[(a_. + b_.*x_)^m_*(c_. + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)*(c + d*x)^(n + 1)/((b*c - a*d)*(m + 1)) - d*(m + n + 2)/((b*c - a*d)*(m + 1))* Int[(a + b*x)^(m + 1)*(c + d*x)^n, x] /; FreeQ[{a, b, c, d, n}, x] && NeQ[b*c - a*d, 0] && LtQ[m, -1] && Not[LtQ[ n, -1] && (EqQ[a, 0] || NeQ[c, 0] && LtQ[m - n, 0] && IntegerQ[n])] && IntLinearQ[a, b, c, d, m, n, x]
Int[1/(Sqrt[a_ + b_.*x_]*Sqrt[c_ + d_.*x_]), x_Symbol] := ArcCosh[b*x/a]/b /; FreeQ[{a, b, c, d}, x] && EqQ[a + c, 0] && EqQ[b - d, 0] && GtQ[a, 0]
Int[1/(Sqrt[a_ + b_.*x_]*Sqrt[c_. + d_.*x_]), x_Symbol] := Int[1/Sqrt[a*c - b*(a - c)*x - b^2*x^2], x] /; FreeQ[{a, b, c, d}, x] && EqQ[b + d, 0] && GtQ[a + c, 0]
Int[1/(Sqrt[a_. + b_.*x_]*Sqrt[c_. + d_.*x_]), x_Symbol] := 2/Sqrt[b]* Subst[Int[1/Sqrt[b*c - a*d + d*x^2], x], x, Sqrt[a + b*x]] /; FreeQ[{a, b, c, d}, x] && GtQ[b*c - a*d, 0] && GtQ[b, 0]
Int[1/((a_. + b_.*x_)*(c_. + d_.*x_)^(1/3)), x_Symbol] := With[{q = Rt[(b*c - a*d)/b, 3]}, -Log[RemoveContent[a + b*x, x]]/(2*b*q) - 3/(2*b*q)*Subst[Int[1/(q - x), x], x, (c + d*x)^(1/3)] + 3/(2*b)* Subst[Int[1/(q^2 + q*x + x^2), x], x, (c + d*x)^(1/3)]] /; FreeQ[{a, b, c, d}, x] && PosQ[(b*c - a*d)/b]
Int[1/((a_. + b_.*x_)*(c_. + d_.*x_)^(1/3)), x_Symbol] := With[{q = Rt[-(b*c - a*d)/b, 3]}, Log[RemoveContent[a + b*x, x]]/(2*b*q) - 3/(2*b*q)*Subst[Int[1/(q + x), x], x, (c + d*x)^(1/3)] + 3/(2*b)* Subst[Int[1/(q^2 - q*x + x^2), x], x, (c + d*x)^(1/3)]] /; FreeQ[{a, b, c, d}, x] && NegQ[(b*c - a*d)/b]
Int[1/((a_. + b_.*x_)*(c_. + d_.*x_)^(2/3)), x_Symbol] := With[{q = Rt[(b*c - a*d)/b, 3]}, -Log[RemoveContent[a + b*x, x]]/(2*b*q^2) - 3/(2*b*q^2)*Subst[Int[1/(q - x), x], x, (c + d*x)^(1/3)] - 3/(2*b*q)* Subst[Int[1/(q^2 + q*x + x^2), x], x, (c + d*x)^(1/3)]] /; FreeQ[{a, b, c, d}, x] && PosQ[(b*c - a*d)/b]
Int[1/((a_. + b_.*x_)*(c_. + d_.*x_)^(2/3)), x_Symbol] := With[{q = Rt[-(b*c - a*d)/b, 3]}, -Log[RemoveContent[a + b*x, x]]/(2*b*q^2) + 3/(2*b*q^2)*Subst[Int[1/(q + x), x], x, (c + d*x)^(1/3)] + 3/(2*b*q)* Subst[Int[1/(q^2 - q*x + x^2), x], x, (c + d*x)^(1/3)]] /; FreeQ[{a, b, c, d}, x] && NegQ[(b*c - a*d)/b]
Int[1/((a_. + b_.*x_)^(1/3)*(c_. + d_.*x_)^(2/3)), x_Symbol] := With[{q = Rt[d/b, 3]}, -Sqrt[3]*q/d* ArcTan[2*q*(a + b*x)^(1/3)/(Sqrt[3]*(c + d*x)^(1/3)) + 1/Sqrt[3]] - q/(2*d)*Log[c + d*x] - 3*q/(2*d)*Log[q*(a + b*x)^(1/3)/(c + d*x)^(1/3) - 1]] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && PosQ[d/b]
Int[1/((a_. + b_.*x_)^(1/3)*(c_. + d_.*x_)^(2/3)), x_Symbol] := With[{q = Rt[-d/b, 3]}, Sqrt[3]*q/d* ArcTan[1/Sqrt[3] - 2*q*(a + b*x)^(1/3)/(Sqrt[3]*(c + d*x)^(1/3))] + q/(2*d)*Log[c + d*x] + 3*q/(2*d)*Log[q*(a + b*x)^(1/3)/(c + d*x)^(1/3) + 1]] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && NegQ[d/b]
Int[(a_. + b_.*x_)^m_*(c_ + d_.*x_)^m_, x_Symbol] := (a + b*x)^ m*(c + d*x)^m/(a*c + (b*c + a*d)*x + b*d*x^2)^m* Int[(a*c + (b*c + a*d)*x + b*d*x^2)^m, x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && LtQ[-1, m, 0] && LeQ[3, Denominator[m], 4] && AtomQ[b*c + a*d]
Int[(a_. + b_.*x_)^m_*(c_ + d_.*x_)^m_, x_Symbol] := (a + b*x)^m*(c + d*x)^m/((a + b*x)*(c + d*x))^m* Int[(a*c + (b*c + a*d)*x + b*d*x^2)^m, x] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && LtQ[-1, m, 0] && LeQ[3, Denominator[m], 4]
Int[(a_. + b_.*x_)^m_*(c_. + d_.*x_)^n_, x_Symbol] := With[{p = Denominator[m]}, p/b*Subst[Int[x^(p*(m + 1) - 1)*(c - a*d/b + d*x^p/b)^n, x], x, (a + b*x)^(1/p)]] /; FreeQ[{a, b, c, d}, x] && NeQ[b*c - a*d, 0] && LtQ[-1, m, 0] && LeQ[-1, n, 0] && LeQ[Denominator[n], Denominator[m]] && IntLinearQ[a, b, c, d, m, n, x]
Int[(b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := c^n*(b*x)^(m + 1)/(b*(m + 1))* Hypergeometric2F1[-n, m + 1, m + 2, -d*x/c] /; FreeQ[{b, c, d, m, n}, x] && Not[IntegerQ[m]] && (IntegerQ[n] || GtQ[c, 0] && Not[EqQ[n, -1/2] && EqQ[c^2 - d^2, 0] && GtQ[-d/(b*c), 0]])
Int[(b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := (c + d*x)^(n + 1)/(d*(n + 1)*(-d/(b*c))^m)* Hypergeometric2F1[-m, n + 1, n + 2, 1 + d*x/c] /; FreeQ[{b, c, d, m, n}, x] && Not[IntegerQ[n]] && (IntegerQ[m] || GtQ[-d/(b*c), 0])
Int[(b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := c^IntPart[n]*(c + d*x)^FracPart[n]/(1 + d*x/c)^FracPart[n]* Int[(b*x)^m*(1 + d*x/c)^n, x] /; FreeQ[{b, c, d, m, n}, x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[GtQ[c, 0]] && Not[GtQ[-d/(b*c), 0]] && (RationalQ[m] && Not[EqQ[n, -1/2] && EqQ[c^2 - d^2, 0]] || Not[RationalQ[n]])
Int[(b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := (-b*c/d)^ IntPart[m]*(b*x)^FracPart[m]/(-d*x/c)^FracPart[m]* Int[(-d*x/c)^m*(c + d*x)^n, x] /; FreeQ[{b, c, d, m, n}, x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[GtQ[c, 0]] && Not[GtQ[-d/(b*c), 0]]
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := (b*c - a*d)^n*(a + b*x)^(m + 1)/(b^(n + 1)*(m + 1))* Hypergeometric2F1[-n, m + 1, m + 2, -d*(a + b*x)/(b*c - a*d)] /; FreeQ[{a, b, c, d, m}, x] && NeQ[b*c - a*d, 0] && Not[IntegerQ[m]] && IntegerQ[n]
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := (a + b*x)^(m + 1)/(b*(m + 1)*(b/(b*c - a*d))^n)* Hypergeometric2F1[-n, m + 1, m + 2, -d*(a + b*x)/(b*c - a*d)] /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[b*c - a*d, 0] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && GtQ[b/(b*c - a*d), 0] && (RationalQ[m] || Not[RationalQ[n] && GtQ[-d/(b*c - a*d), 0]])
Int[(a_ + b_.*x_)^m_*(c_ + d_.*x_)^n_, x_Symbol] := (c + d*x)^ FracPart[ n]/((b/(b*c - a*d))^IntPart[n]*(b*(c + d*x)/(b*c - a*d))^ FracPart[n])* Int[(a + b*x)^m*Simp[b*c/(b*c - a*d) + b*d*x/(b*c - a*d), x]^n, x] /; FreeQ[{a, b, c, d, m, n}, x] && NeQ[b*c - a*d, 0] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && (RationalQ[m] || Not[SimplerQ[n + 1, m + 1]])
Int[(a_. + b_.*u_)^m_.*(c_. + d_.*u_)^n_., x_Symbol] := 1/Coefficient[u, x, 1]*Subst[Int[(a + b*x)^m*(c + d*x)^n, x], x, u] /; FreeQ[{a, b, c, d, m, n}, x] && LinearQ[u, x] && NeQ[Coefficient[u, x, 0], 0]
(* IntLinearQ[a,b,c,d,m,n,x] returns True iff (a+b*x)^m*(c+d*x)^n is  integrable wrt x in terms of non-hypergeometric functions. *) IntLinearQ[a_, b_, c_, d_, m_, n_, x_] := IGtQ[m, 0] || IGtQ[n, 0] || IntegersQ[3*m, 3*n] || IntegersQ[4*m, 4*n] || IntegersQ[2*m, 6*n] || IntegersQ[6*m, 2*n] || ILtQ[m + n, -1] || IntegerQ[m + n] && RationalQ[m]
