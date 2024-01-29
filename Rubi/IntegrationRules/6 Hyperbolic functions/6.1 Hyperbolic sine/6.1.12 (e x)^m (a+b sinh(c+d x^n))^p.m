
(* ::Subsection::Closed:: *)
(* 6.1.12 (e x)^m (a+b sinh(c+d x^n))^p *)
Int[Sinh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[E^(c + d*x^n), x] - 1/2*Int[E^(-c - d*x^n), x] /; FreeQ[{c, d}, x] && IGtQ[n, 1]
Int[Cosh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[E^(c + d*x^n), x] + 1/2*Int[E^(-c - d*x^n), x] /; FreeQ[{c, d}, x] && IGtQ[n, 1]
Int[(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(a + b*Sinh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d}, x] && IGtQ[n, 1] && IGtQ[p, 1]
Int[(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(a + b*Cosh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d}, x] && IGtQ[n, 1] && IGtQ[p, 1]
Int[(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := -Subst[Int[(a + b*Sinh[c + d*x^(-n)])^p/x^2, x], x, 1/x] /; FreeQ[{a, b, c, d}, x] && ILtQ[n, 0] && IntegerQ[p]
Int[(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := -Subst[Int[(a + b*Cosh[c + d*x^(-n)])^p/x^2, x], x, 1/x] /; FreeQ[{a, b, c, d}, x] && ILtQ[n, 0] && IntegerQ[p]
Int[(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := Module[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*Sinh[c + d*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c, d}, x] && FractionQ[n] && IntegerQ[p]
Int[(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := Module[{k = Denominator[n]}, k*Subst[Int[x^(k - 1)*(a + b*Cosh[c + d*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c, d}, x] && FractionQ[n] && IntegerQ[p]
Int[Sinh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[E^(c + d*x^n), x] - 1/2*Int[E^(-c - d*x^n), x] /; FreeQ[{c, d, n}, x]
Int[Cosh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[E^(c + d*x^n), x] + 1/2*Int[E^(-c - d*x^n), x] /; FreeQ[{c, d, n}, x]
Int[(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(a + b*Sinh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[p, 0]
Int[(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(a + b*Cosh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[p, 0]
Int[(a_. + b_.*Sinh[c_. + d_.*u_^n_])^p_., x_Symbol] := 1/Coefficient[u, x, 1]* Subst[Int[(a + b*Sinh[c + d*x^n])^p, x], x, u] /; FreeQ[{a, b, c, d, n}, x] && IntegerQ[p] && LinearQ[u, x] && NeQ[u, x]
Int[(a_. + b_.*Cosh[c_. + d_.*u_^n_])^p_., x_Symbol] := 1/Coefficient[u, x, 1]* Subst[Int[(a + b*Cosh[c + d*x^n])^p, x], x, u] /; FreeQ[{a, b, c, d, n}, x] && IntegerQ[p] && LinearQ[u, x] && NeQ[u, x]
Int[(a_. + b_.*Sinh[c_. + d_.*u_^n_])^p_, x_Symbol] := Unintegrable[(a + b*Sinh[c + d*u^n])^p, x] /; FreeQ[{a, b, c, d, n, p}, x] && LinearQ[u, x]
Int[(a_. + b_.*Cosh[c_. + d_.*u_^n_])^p_, x_Symbol] := Unintegrable[(a + b*Cosh[c + d*u^n])^p, x] /; FreeQ[{a, b, c, d, n, p}, x] && LinearQ[u, x]
Int[(a_. + b_.*Sinh[u_])^p_., x_Symbol] := Int[(a + b*Sinh[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[(a_. + b_.*Cosh[u_])^p_., x_Symbol] := Int[(a + b*Cosh[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[Sinh[d_.*x_^n_]/x_, x_Symbol] := SinhIntegral[d*x^n]/n /; FreeQ[{d, n}, x]
Int[Cosh[d_.*x_^n_]/x_, x_Symbol] := CoshIntegral[d*x^n]/n /; FreeQ[{d, n}, x]
Int[Sinh[c_ + d_.*x_^n_]/x_, x_Symbol] := Sinh[c]*Int[Cosh[d*x^n]/x, x] + Cosh[c]*Int[Sinh[d*x^n]/x, x] /; FreeQ[{c, d, n}, x]
Int[Cosh[c_ + d_.*x_^n_]/x_, x_Symbol] := Cosh[c]*Int[Cosh[d*x^n]/x, x] + Sinh[c]*Int[Sinh[d*x^n]/x, x] /; FreeQ[{c, d, n}, x]
Int[x_^m_.*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := 1/n*Subst[ Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*Sinh[c + d*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, m, n, p}, x] && IntegerQ[ Simplify[(m + 1)/n]] && (EqQ[p, 1] || EqQ[m, n - 1] || IntegerQ[p] && GtQ[Simplify[(m + 1)/n], 0])
Int[x_^m_.*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := 1/n*Subst[ Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*Cosh[c + d*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, m, n, p}, x] && IntegerQ[ Simplify[(m + 1)/n]] && (EqQ[p, 1] || EqQ[m, n - 1] || IntegerQ[p] && GtQ[Simplify[(m + 1)/n], 0])
Int[(e_*x_)^m_*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Sinh[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && IntegerQ[Simplify[(m + 1)/n]]
Int[(e_*x_)^m_*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Cosh[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && IntegerQ[Simplify[(m + 1)/n]]
Int[(e_.*x_)^m_.*Sinh[c_. + d_.*x_^n_], x_Symbol] := e^(n - 1)*(e*x)^(m - n + 1)*Cosh[c + d*x^n]/(d*n) - e^n*(m - n + 1)/(d*n)*Int[(e*x)^(m - n)*Cosh[c + d*x^n], x] /; FreeQ[{c, d, e}, x] && IGtQ[n, 0] && LtQ[0, n, m + 1]
Int[(e_.*x_)^m_.*Cosh[c_. + d_.*x_^n_], x_Symbol] := e^(n - 1)*(e*x)^(m - n + 1)*Sinh[c + d*x^n]/(d*n) - e^n*(m - n + 1)/(d*n)*Int[(e*x)^(m - n)*Sinh[c + d*x^n], x] /; FreeQ[{c, d, e}, x] && IGtQ[n, 0] && LtQ[0, n, m + 1]
Int[(e_.*x_)^m_*Sinh[c_. + d_.*x_^n_], x_Symbol] := (e*x)^(m + 1)*Sinh[c + d*x^n]/(e*(m + 1)) - d*n/(e^n*(m + 1))*Int[(e*x)^(m + n)*Cosh[c + d*x^n], x] /; FreeQ[{c, d, e}, x] && IGtQ[n, 0] && LtQ[m, -1]
Int[(e_.*x_)^m_*Cosh[c_. + d_.*x_^n_], x_Symbol] := (e*x)^(m + 1)*Cosh[c + d*x^n]/(e*(m + 1)) - d*n/(e^n*(m + 1))*Int[(e*x)^(m + n)*Sinh[c + d*x^n], x] /; FreeQ[{c, d, e}, x] && IGtQ[n, 0] && LtQ[m, -1]
Int[(e_.*x_)^m_.*Sinh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[(e*x)^m*E^(c + d*x^n), x] - 1/2*Int[(e*x)^m*E^(-c - d*x^n), x] /; FreeQ[{c, d, e, m}, x] && IGtQ[n, 0]
Int[(e_.*x_)^m_.*Cosh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[(e*x)^m*E^(c + d*x^n), x] + 1/2*Int[(e*x)^m*E^(-c - d*x^n), x] /; FreeQ[{c, d, e, m}, x] && IGtQ[n, 0]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_, x_Symbol] := -Sinh[a + b*x^n]^p/((n - 1)*x^(n - 1)) + b*n*p/(n - 1)*Int[Sinh[a + b*x^n]^(p - 1)*Cosh[a + b*x^n], x] /; FreeQ[{a, b}, x] && IntegersQ[n, p] && EqQ[m + n, 0] && GtQ[p, 1] && NeQ[n, 1]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_, x_Symbol] := -Cosh[a + b*x^n]^p/((n - 1)*x^(n - 1)) + b*n*p/(n - 1)*Int[Cosh[a + b*x^n]^(p - 1)*Sinh[a + b*x^n], x] /; FreeQ[{a, b}, x] && IntegersQ[n, p] && EqQ[m + n, 0] && GtQ[p, 1] && NeQ[n, 1]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_, x_Symbol] := -n*Sinh[a + b*x^n]^p/(b^2*n^2*p^2) + x^n*Cosh[a + b*x^n]*Sinh[a + b*x^n]^(p - 1)/(b*n*p) - (p - 1)/p*Int[x^m*Sinh[a + b*x^n]^(p - 2), x] /; FreeQ[{a, b, m, n}, x] && EqQ[m - 2*n + 1] && GtQ[p, 1]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_, x_Symbol] := -n*Cosh[a + b*x^n]^p/(b^2*n^2*p^2) + x^n*Sinh[a + b*x^n]*Cosh[a + b*x^n]^(p - 1)/(b*n*p) + (p - 1)/p*Int[x^m*Cosh[a + b*x^n]^(p - 2), x] /; FreeQ[{a, b, m, n}, x] && EqQ[m - 2*n + 1] && GtQ[p, 1]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_, x_Symbol] := -(m - n + 1)*x^(m - 2*n + 1)*Sinh[a + b*x^n]^p/(b^2*n^2*p^2) + x^(m - n + 1)*Cosh[a + b*x^n]*Sinh[a + b*x^n]^(p - 1)/(b*n*p) - (p - 1)/p*Int[x^m*Sinh[a + b*x^n]^(p - 2), x] + (m - n + 1)*(m - 2*n + 1)/(b^2*n^2*p^2)* Int[x^(m - 2*n)*Sinh[a + b*x^n]^p, x] /; FreeQ[{a, b}, x] && IntegersQ[m, n] && GtQ[p, 1] && LtQ[0, 2*n, m + 1]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_, x_Symbol] := -(m - n + 1)*x^(m - 2*n + 1)*Cosh[a + b*x^n]^p/(b^2*n^2*p^2) + x^(m - n + 1)*Sinh[a + b*x^n]*Cosh[a + b*x^n]^(p - 1)/(b*n*p) + (p - 1)/p*Int[x^m*Cosh[a + b*x^n]^(p - 2), x] + (m - n + 1)*(m - 2*n + 1)/(b^2*n^2*p^2)* Int[x^(m - 2*n)*Cosh[a + b*x^n]^p, x] /; FreeQ[{a, b}, x] && IntegersQ[m, n] && GtQ[p, 1] && LtQ[0, 2*n, m + 1]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_, x_Symbol] := x^(m + 1)*Sinh[a + b*x^n]^p/(m + 1) - b*n*p*x^(m + n + 1)*Cosh[a + b*x^n]* Sinh[a + b*x^n]^(p - 1)/((m + 1)*(m + n + 1)) + b^2*n^2*p^2/((m + 1)*(m + n + 1))* Int[x^(m + 2*n)*Sinh[a + b*x^n]^p, x] + b^2*n^2*p*(p - 1)/((m + 1)*(m + n + 1))* Int[x^(m + 2*n)*Sinh[a + b*x^n]^(p - 2), x] /; FreeQ[{a, b}, x] && IntegersQ[m, n] && GtQ[p, 1] && LtQ[0, 2*n, 1 - m] && NeQ[m + n + 1, 0]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_, x_Symbol] := x^(m + 1)*Cosh[a + b*x^n]^p/(m + 1) - b*n*p*x^(m + n + 1)*Sinh[a + b*x^n]* Cosh[a + b*x^n]^(p - 1)/((m + 1)*(m + n + 1)) + b^2*n^2*p^2/((m + 1)*(m + n + 1))* Int[x^(m + 2*n)*Cosh[a + b*x^n]^p, x] - b^2*n^2*p*(p - 1)/((m + 1)*(m + n + 1))* Int[x^(m + 2*n)*Cosh[a + b*x^n]^(p - 2), x] /; FreeQ[{a, b}, x] && IntegersQ[m, n] && GtQ[p, 1] && LtQ[0, 2*n, 1 - m] && NeQ[m + n + 1, 0]
Int[(e_.*x_)^m_*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := With[{k = Denominator[m]}, k/e* Subst[Int[x^(k*(m + 1) - 1)*(a + b*Sinh[c + d*x^(k*n)/e^n])^p, x], x, (e*x)^(1/k)]] /; FreeQ[{a, b, c, d, e}, x] && IntegerQ[p] && IGtQ[n, 0] && FractionQ[m]
Int[(e_.*x_)^m_*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := With[{k = Denominator[m]}, k/e* Subst[Int[x^(k*(m + 1) - 1)*(a + b*Cosh[c + d*x^(k*n)/e^n])^p, x], x, (e*x)^(1/k)]] /; FreeQ[{a, b, c, d, e}, x] && IntegerQ[p] && IGtQ[n, 0] && FractionQ[m]
Int[(e_.*x_)^m_.*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(e*x)^m, (a + b*Sinh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d, e, m}, x] && IGtQ[p, 1] && IGtQ[n, 0]
Int[(e_.*x_)^m_.*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(e*x)^m, (a + b*Cosh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d, e, m}, x] && IGtQ[p, 1] && IGtQ[n, 0]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_, x_Symbol] := x^n*Cosh[a + b*x^n]*Sinh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) - n*Sinh[a + b*x^n]^(p + 2)/(b^2*n^2*(p + 1)*(p + 2)) - (p + 2)/(p + 1)*Int[x^m*Sinh[a + b*x^n]^(p + 2), x] /; FreeQ[{a, b, m, n}, x] && EqQ[m - 2*n + 1, 0] && LtQ[p, -1] && NeQ[p, -2]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_, x_Symbol] := -x^n*Sinh[a + b*x^n]*Cosh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) + n*Cosh[a + b*x^n]^(p + 2)/(b^2*n^2*(p + 1)*(p + 2)) + (p + 2)/(p + 1)*Int[x^m*Cosh[a + b*x^n]^(p + 2), x] /; FreeQ[{a, b, m, n}, x] && EqQ[m - 2*n + 1, 0] && LtQ[p, -1] && NeQ[p, -2]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_, x_Symbol] := x^(m - n + 1)*Cosh[a + b*x^n]* Sinh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) - (m - n + 1)*x^(m - 2*n + 1)* Sinh[a + b*x^n]^(p + 2)/(b^2*n^2*(p + 1)*(p + 2)) - (p + 2)/(p + 1)*Int[x^m*Sinh[a + b*x^n]^(p + 2), x] + (m - n + 1)*(m - 2*n + 1)/(b^2*n^2*(p + 1)*(p + 2))* Int[x^(m - 2*n)*Sinh[a + b*x^n]^(p + 2), x] /; FreeQ[{a, b}, x] && IntegersQ[m, n] && LtQ[p, -1] && NeQ[p, -2] && LtQ[0, 2*n, m + 1]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_, x_Symbol] := -x^(m - n + 1)*Sinh[a + b*x^n]* Cosh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) + (m - n + 1)*x^(m - 2*n + 1)* Cosh[a + b*x^n]^(p + 2)/(b^2*n^2*(p + 1)*(p + 2)) + (p + 2)/(p + 1)*Int[x^m*Cosh[a + b*x^n]^(p + 2), x] - (m - n + 1)*(m - 2*n + 1)/(b^2*n^2*(p + 1)*(p + 2))* Int[x^(m - 2*n)*Cosh[a + b*x^n]^(p + 2), x] /; FreeQ[{a, b}, x] && IntegersQ[m, n] && LtQ[p, -1] && NeQ[p, -2] && LtQ[0, 2*n, m + 1]
Int[x_^m_.*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := -Subst[Int[(a + b*Sinh[c + d*x^(-n)])^p/x^(m + 2), x], x, 1/x] /; FreeQ[{a, b, c, d}, x] && IntegerQ[p] && ILtQ[n, 0] && IntegerQ[m]
Int[x_^m_.*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := -Subst[Int[(a + b*Cosh[c + d*x^(-n)])^p/x^(m + 2), x], x, 1/x] /; FreeQ[{a, b, c, d}, x] && IntegerQ[p] && ILtQ[n, 0] && IntegerQ[m]
Int[(e_.*x_)^m_*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := With[{k = Denominator[m]}, -k/e* Subst[Int[(a + b*Sinh[c + d/(e^n*x^(k*n))])^p/x^(k*(m + 1) + 1), x], x, 1/(e*x)^(1/k)]] /; FreeQ[{a, b, c, d, e}, x] && IntegerQ[p] && ILtQ[n, 0] && FractionQ[m]
Int[(e_.*x_)^m_*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := With[{k = Denominator[m]}, -k/e* Subst[Int[(a + b*Cosh[c + d/(e^n*x^(k*n))])^p/x^(k*(m + 1) + 1), x], x, 1/(e*x)^(1/k)]] /; FreeQ[{a, b, c, d, e}, x] && IntegerQ[p] && ILtQ[n, 0] && FractionQ[m]
Int[(e_.*x_)^m_*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := -(e*x)^m*(x^(-1))^m* Subst[Int[(a + b*Sinh[c + d*x^(-n)])^p/x^(m + 2), x], x, 1/x] /; FreeQ[{a, b, c, d, e, m}, x] && IntegerQ[p] && ILtQ[n, 0] && Not[RationalQ[m]]
Int[(e_.*x_)^m_*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := -(e*x)^m*(x^(-1))^m* Subst[Int[(a + b*Cosh[c + d*x^(-n)])^p/x^(m + 2), x], x, 1/x] /; FreeQ[{a, b, c, d, e, m}, x] && IntegerQ[p] && ILtQ[n, 0] && Not[RationalQ[m]]
Int[x_^m_.*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := Module[{k = Denominator[n]}, k*Subst[Int[x^(k*(m + 1) - 1)*(a + b*Sinh[c + d*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c, d, m}, x] && IntegerQ[p] && FractionQ[n]
Int[x_^m_.*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := Module[{k = Denominator[n]}, k*Subst[Int[x^(k*(m + 1) - 1)*(a + b*Cosh[c + d*x^(k*n)])^p, x], x, x^(1/k)]] /; FreeQ[{a, b, c, d, m}, x] && IntegerQ[p] && FractionQ[n]
Int[(e_*x_)^m_*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Sinh[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m}, x] && IntegerQ[p] && FractionQ[n]
Int[(e_*x_)^m_*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Cosh[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m}, x] && IntegerQ[p] && FractionQ[n]
Int[x_^m_.*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := 1/(m + 1)* Subst[Int[(a + b*Sinh[c + d*x^Simplify[n/(m + 1)]])^p, x], x, x^(m + 1)] /; FreeQ[{a, b, c, d, m, n}, x] && IntegerQ[p] && NeQ[m, -1] && IGtQ[Simplify[n/(m + 1)], 0] && Not[IntegerQ[n]]
Int[x_^m_.*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := 1/(m + 1)* Subst[Int[(a + b*Cosh[c + d*x^Simplify[n/(m + 1)]])^p, x], x, x^(m + 1)] /; FreeQ[{a, b, c, d, m, n}, x] && IntegerQ[p] && NeQ[m, -1] && IGtQ[Simplify[n/(m + 1)], 0] && Not[IntegerQ[n]]
Int[(e_*x_)^m_*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_., x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Sinh[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IntegerQ[p] && NeQ[m, -1] && IGtQ[Simplify[n/(m + 1)], 0] && Not[IntegerQ[n]]
Int[(e_*x_)^m_*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_., x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Cosh[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IntegerQ[p] && NeQ[m, -1] && IGtQ[Simplify[n/(m + 1)], 0] && Not[IntegerQ[n]]
Int[(e_.*x_)^m_.*Sinh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[(e*x)^m*E^(c + d*x^n), x] - 1/2*Int[(e*x)^m*E^(-c - d*x^n), x] /; FreeQ[{c, d, e, m, n}, x]
Int[(e_.*x_)^m_.*Cosh[c_. + d_.*x_^n_], x_Symbol] := 1/2*Int[(e*x)^m*E^(c + d*x^n), x] + 1/2*Int[(e*x)^m*E^(-c - d*x^n), x] /; FreeQ[{c, d, e, m, n}, x]
Int[(e_.*x_)^m_.*(a_. + b_.*Sinh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(e*x)^m, (a + b*Sinh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IGtQ[p, 0]
Int[(e_.*x_)^m_.*(a_. + b_.*Cosh[c_. + d_.*x_^n_])^p_, x_Symbol] := Int[ExpandTrigReduce[(e*x)^m, (a + b*Cosh[c + d*x^n])^p, x], x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IGtQ[p, 0]
Int[x_^m_.*(a_. + b_.*Sinh[c_. + d_.*u_^n_])^p_., x_Symbol] := 1/Coefficient[u, x, 1]^(m + 1)* Subst[Int[(x - Coefficient[u, x, 0])^m*(a + b*Sinh[c + d*x^n])^p, x], x, u] /; FreeQ[{a, b, c, d, n, p}, x] && LinearQ[u, x] && NeQ[u, x] && IntegerQ[m]
Int[x_^m_.*(a_. + b_.*Cosh[c_. + d_.*u_^n_])^p_., x_Symbol] := 1/Coefficient[u, x, 1]^(m + 1)* Subst[Int[(x - Coefficient[u, x, 0])^m*(a + b*Cosh[c + d*x^n])^p, x], x, u] /; FreeQ[{a, b, c, d, n, p}, x] && LinearQ[u, x] && NeQ[u, x] && IntegerQ[m]
Int[(e_.*x_)^m_.*(a_. + b_.*Sinh[c_. + d_.*u_^n_])^p_., x_Symbol] := Unintegrable[(e*x)^m*(a + b*Sinh[c + d*u^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && LinearQ[u, x]
Int[(e_.*x_)^m_.*(a_. + b_.*Cosh[c_. + d_.*u_^n_])^p_., x_Symbol] := Unintegrable[(e*x)^m*(a + b*Cosh[c + d*u^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && LinearQ[u, x]
Int[(e_*x_)^m_.*(a_. + b_.*Sinh[u_])^p_., x_Symbol] := Int[(e*x)^m*(a + b*Sinh[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, e, m, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[(e_*x_)^m_.*(a_. + b_.*Cosh[u_])^p_., x_Symbol] := Int[(e*x)^m*(a + b*Cosh[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, e, m, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_]^p_.*Cosh[a_. + b_.*x_^n_.], x_Symbol] := Sinh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) /; FreeQ[{a, b, m, n, p}, x] && EqQ[m, n - 1] && NeQ[p, -1]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_]^p_.*Sinh[a_. + b_.*x_^n_.], x_Symbol] := Cosh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) /; FreeQ[{a, b, m, n, p}, x] && EqQ[m, n - 1] && NeQ[p, -1]
Int[x_^m_.*Sinh[a_. + b_.*x_^n_.]^p_.*Cosh[a_. + b_.*x_^n_.], x_Symbol] := x^(m - n + 1)*Sinh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) - (m - n + 1)/(b*n*(p + 1))* Int[x^(m - n)*Sinh[a + b*x^n]^(p + 1), x] /; FreeQ[{a, b, p}, x] && LtQ[0, n, m + 1] && NeQ[p, -1]
Int[x_^m_.*Cosh[a_. + b_.*x_^n_.]^p_.*Sinh[a_. + b_.*x_^n_.], x_Symbol] := x^(m - n + 1)*Cosh[a + b*x^n]^(p + 1)/(b*n*(p + 1)) - (m - n + 1)/(b*n*(p + 1))* Int[x^(m - n)*Cosh[a + b*x^n]^(p + 1), x] /; FreeQ[{a, b, p}, x] && LtQ[0, n, m + 1] && NeQ[p, -1]
