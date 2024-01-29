
(* ::Subsection::Closed:: *)
(* 4.1.9 trig^m (a+b sin^n+c sin^(2 n))^p *)
Int[(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := (a + b*Sin[d + e*x]^n + c*Sin[d + e*x]^(2*n))^ p/(b + 2*c*Sin[d + e*x]^n)^(2*p)* Int[u*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, n, p}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := (a + b*Cos[d + e*x]^n + c*Cos[d + e*x]^(2*n))^ p/(b + 2*c*Cos[d + e*x]^n)^(2*p)* Int[u*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, n, p}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[1/(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.), x_Symbol] := Module[{q = Rt[b^2 - 4*a*c, 2]}, 2*c/q*Int[1/(b - q + 2*c*Sin[d + e*x]^n), x] - 2*c/q*Int[1/(b + q + 2*c*Sin[d + e*x]^n), x]] /; FreeQ[{a, b, c, d, e, n}, x] && EqQ[n2, 2*n] && NeQ[b^2 - 4*a*c, 0]
Int[1/(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.), x_Symbol] := Module[{q = Rt[b^2 - 4*a*c, 2]}, 2*c/q*Int[1/(b - q + 2*c*Cos[d + e*x]^n), x] - 2*c/q*Int[1/(b + q + 2*c*Cos[d + e*x]^n), x]] /; FreeQ[{a, b, c, d, e, n}, x] && EqQ[n2, 2*n] && NeQ[b^2 - 4*a*c, 0]
Int[sin[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := 1/(4^p*c^p)*Int[Sin[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[cos[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := 1/(4^p*c^p)*Int[Cos[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[sin[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := (a + b*Sin[d + e*x]^n + c*Sin[d + e*x]^(2*n))^ p/(b + 2*c*Sin[d + e*x]^n)^(2*p)* Int[Sin[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[cos[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := (a + b*Cos[d + e*x]^n + c*Cos[d + e*x]^(2*n))^ p/(b + 2*c*Cos[d + e*x]^n)^(2*p)* Int[Cos[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[sin[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_ + c_.*sin[d_. + e_.*x_]^n2_)^ p_, x_Symbol] := Module[{f = FreeFactors[Cot[d + e*x], x]}, -f/e* Subst[Int[ ExpandToSum[c + b*(1 + x^2)^(n/2) + a*(1 + x^2)^n, x]^ p/(1 + f^2*x^2)^(m/2 + n*p + 1), x], x, Cot[d + e*x]/f]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n/2] && IntegerQ[p]
Int[cos[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_ + c_.*cos[d_. + e_.*x_]^n2_)^ p_, x_Symbol] := Module[{f = FreeFactors[Tan[d + e*x], x]}, f/e* Subst[Int[ ExpandToSum[c + b*(1 + x^2)^(n/2) + a*(1 + x^2)^n, x]^ p/(1 + f^2*x^2)^(m/2 + n*p + 1), x], x, Tan[d + e*x]/f]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n/2] && IntegerQ[p]
Int[sin[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := Int[ExpandTrig[ sin[d + e*x]^m*(a + b*sin[d + e*x]^n + c*sin[d + e*x]^(2*n))^p, x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[m, n, p]
Int[cos[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_, x_Symbol] := Int[ExpandTrig[ cos[d + e*x]^m*(a + b*cos[d + e*x]^n + c*cos[d + e*x]^(2*n))^p, x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[m, n, p]
Int[cos[d_. + e_.*x_]^ m_.*(a_. + b_.*(f_.*sin[d_. + e_.*x_])^n_. + c_.*(f_.*sin[d_. + e_.*x_])^n2_.)^p_., x_Symbol] := Module[{g = FreeFactors[Sin[d + e*x], x]}, g/e* Subst[Int[(1 - g^2*x^2)^((m - 1)/2)*(a + b*(f*g*x)^n + c*(f*g*x)^(2*n))^p, x], x, Sin[d + e*x]/g]] /; FreeQ[{a, b, c, d, e, f, n, p}, x] && EqQ[n2, 2*n] && IntegerQ[(m - 1)/2]
Int[sin[d_. + e_.*x_]^ m_.*(a_. + b_.*(f_.*cos[d_. + e_.*x_])^n_. + c_.*(f_.*cos[d_. + e_.*x_])^n2_.)^p_., x_Symbol] := Module[{g = FreeFactors[Cos[d + e*x], x]}, -g/e* Subst[Int[(1 - g^2*x^2)^((m - 1)/2)*(a + b*(f*g*x)^n + c*(f*g*x)^(2*n))^p, x], x, Cos[d + e*x]/g]] /; FreeQ[{a, b, c, d, e, f, n, p}, x] && EqQ[n2, 2*n] && IntegerQ[(m - 1)/2]
Int[cos[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[Cos[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[sin[d_. + e_.*x_]^ m_*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[Sin[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[cos[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_, x_Symbol] := (a + b*Sin[d + e*x]^n + c*Sin[d + e*x]^(2*n))^ p/(b + 2*c*Sin[d + e*x]^n)^(2*p)* Int[Cos[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[sin[d_. + e_.*x_]^ m_*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_, x_Symbol] := (a + b*Cos[d + e*x]^n + c*Cos[d + e*x]^(2*n))^ p/(b + 2*c*Cos[d + e*x]^n)^(2*p)* Int[Sin[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[cos[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_ + c_.*sin[d_. + e_.*x_]^n2_)^ p_., x_Symbol] := Module[{f = FreeFactors[Cot[d + e*x], x]}, -f^(m + 1)/e* Subst[Int[ x^m*ExpandToSum[c + b*(1 + x^2)^(n/2) + a*(1 + x^2)^n, x]^ p/(1 + f^2*x^2)^(m/2 + n*p + 1), x], x, Cot[d + e*x]/f]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n/2] && IntegerQ[p]
Int[sin[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_ + c_.*cos[d_. + e_.*x_]^n2_)^ p_., x_Symbol] := Module[{f = FreeFactors[Tan[d + e*x], x]}, f^(m + 1)/e* Subst[Int[ x^m*ExpandToSum[c + b*(1 + x^2)^(n/2) + a*(1 + x^2)^n, x]^ p/(1 + f^2*x^2)^(m/2 + n*p + 1), x], x, Tan[d + e*x]/f]] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n/2] && IntegerQ[p]
Int[cos[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_., x_Symbol] := Int[ExpandTrig[(1 - sin[d + e*x]^2)^(m/2)*(a + b*sin[d + e*x]^n + c*sin[d + e*x]^(2*n))^p, x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[n, p]
Int[sin[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_., x_Symbol] := Int[ExpandTrig[(1 - cos[d + e*x]^2)^(m/2)*(a + b*cos[d + e*x]^n + c*cos[d + e*x]^(2*n))^p, x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[n, p]
Int[tan[d_. + e_.*x_]^ m_.*(a_ + b_.*(f_.*sin[d_. + e_.*x_])^n_ + c_.*(f_.*sin[d_. + e_.*x_])^n2_.)^p_., x_Symbol] := Module[{g = FreeFactors[Sin[d + e*x], x]}, g^(m + 1)/e* Subst[Int[ x^m*(a + b*(f*g*x)^n + c*(f*g*x)^(2*n))^ p/(1 - g^2*x^2)^((m + 1)/2), x], x, Sin[d + e*x]/g]] /; FreeQ[{a, b, c, d, e, f, n}, x] && IntegerQ[(m - 1)/2] && IntegerQ[2*p]
Int[cot[d_. + e_.*x_]^ m_.*(a_ + b_.*(f_.*cos[d_. + e_.*x_])^n_ + c_.*(f_.*cos[d_. + e_.*x_])^n2_.)^p_., x_Symbol] := Module[{g = FreeFactors[Cos[d + e*x], x]}, -g^(m + 1)/e* Subst[Int[ x^m*(a + b*(f*g*x)^n + c*(f*g*x)^(2*n))^ p/(1 - g^2*x^2)^((m + 1)/2), x], x, Cos[d + e*x]/g]] /; FreeQ[{a, b, c, d, e, f, n}, x] && IntegerQ[(m - 1)/2] && IntegerQ[2*p]
Int[tan[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[Tan[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[cot[d_. + e_.*x_]^ m_*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[Cot[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[tan[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_, x_Symbol] := (a + b*Sin[d + e*x]^n + c*Sin[d + e*x]^(2*n))^ p/(b + 2*c*Sin[d + e*x]^n)^(2*p)* Int[Tan[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[cot[d_. + e_.*x_]^ m_*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_, x_Symbol] := (a + b*Cos[d + e*x]^n + c*Cos[d + e*x]^(2*n))^ p/(b + 2*c*Cos[d + e*x]^n)^(2*p)* Int[Cot[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[tan[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_ + c_.*sin[d_. + e_.*x_]^n2_)^ p_., x_Symbol] := Module[{f = FreeFactors[Tan[d + e*x], x]}, f^(m + 1)/e* Subst[Int[ x^m*ExpandToSum[ c*x^(2*n) + b*x^n*(1 + x^2)^(n/2) + a*(1 + x^2)^n, x]^ p/(1 + f^2*x^2)^(n*p + 1), x], x, Tan[d + e*x]/f]] /; FreeQ[{a, b, c, d, e, m}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n/2] && IntegerQ[p]
Int[cot[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_ + c_.*cos[d_. + e_.*x_]^n2_)^ p_., x_Symbol] := Module[{f = FreeFactors[Cot[d + e*x], x]}, -f^(m + 1)/e* Subst[Int[ x^m*ExpandToSum[ c*x^(2*n) + b*x^n*(1 + x^2)^(n/2) + a*(1 + x^2)^n, x]^ p/(1 + f^2*x^2)^(n*p + 1), x], x, Cot[d + e*x]/f]] /; FreeQ[{a, b, c, d, e, m}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n/2] && IntegerQ[p]
Int[tan[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_., x_Symbol] := Int[ExpandTrig[ sin[d + e*x]^ m*(a + b*sin[d + e*x]^n + c*sin[d + e*x]^(2*n))^ p/(1 - sin[d + e*x]^2)^(m/2), x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[n, p]
Int[cot[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_., x_Symbol] := Int[ExpandTrig[ cos[d + e*x]^ m*(a + b*cos[d + e*x]^n + c*cos[d + e*x]^(2*n))^ p/(1 - cos[d + e*x]^2)^(m/2), x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[n, p]
Int[cot[d_. + e_.*x_]^ m_.*(a_ + b_.*(f_.*sin[d_. + e_.*x_])^n_ + c_.*(f_.*sin[d_. + e_.*x_])^n2_.)^p_., x_Symbol] := Module[{g = FreeFactors[Sin[d + e*x], x]}, g^(m + 1)/e* Subst[Int[(1 - g^2*x^2)^((m - 1)/ 2)*(a + b*(f*g*x)^n + c*(f*g*x)^(2*n))^p/x^m, x], x, Sin[d + e*x]/g]] /; FreeQ[{a, b, c, d, e, f, n}, x] && IntegerQ[(m - 1)/2] && IntegerQ[2*p]
Int[tan[d_. + e_.*x_]^ m_.*(a_ + b_.*(f_.*cos[d_. + e_.*x_])^n_ + c_.*(f_.*cos[d_. + e_.*x_])^n2_.)^p_., x_Symbol] := Module[{g = FreeFactors[Cos[d + e*x], x]}, -g^(m + 1)/e* Subst[Int[(1 - g^2*x^2)^((m - 1)/ 2)*(a + b*(f*g*x)^n + c*(f*g*x)^(2*n))^p/x^m, x], x, Cos[d + e*x]/g]] /; FreeQ[{a, b, c, d, e, f, n}, x] && IntegerQ[(m - 1)/2] && IntegerQ[2*p]
Int[cot[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[Cot[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[tan[d_. + e_.*x_]^ m_*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_., x_Symbol] := 1/(4^p*c^p)*Int[Tan[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[cot[d_. + e_.*x_]^ m_*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^ p_, x_Symbol] := (a + b*Sin[d + e*x]^n + c*Sin[d + e*x]^(2*n))^ p/(b + 2*c*Sin[d + e*x]^n)^(2*p)* Int[Cot[d + e*x]^m*(b + 2*c*Sin[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[tan[d_. + e_.*x_]^ m_*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^ p_, x_Symbol] := (a + b*Cos[d + e*x]^n + c*Cos[d + e*x]^(2*n))^ p/(b + 2*c*Cos[d + e*x]^n)^(2*p)* Int[Tan[d + e*x]^m*(b + 2*c*Cos[d + e*x]^n)^(2*p), x] /; FreeQ[{a, b, c, d, e, m, n, p}, x] && EqQ[n2, 2*n] && Not[IntegerQ[(m - 1)/2]] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[p]]
Int[cot[d_. + e_.*x_]^ m_.*(a_ + b_.*sin[d_. + e_.*x_]^n_ + c_.*sin[d_. + e_.*x_]^n2_)^ p_., x_Symbol] := Module[{f = FreeFactors[Cot[d + e*x], x]}, -f^(m + 1)/e* Subst[Int[ x^m*ExpandToSum[c + b*(1 + f^2*x^2)^(n/2) + a*(1 + f^2*x^2)^n, x]^p/(1 + f^2*x^2)^(n*p + 1), x], x, Cot[d + e*x]/f]] /; FreeQ[{a, b, c, d, e, m}, x] && EqQ[n2, 2*n] && IntegerQ[n/2] && IntegerQ[p]
Int[tan[d_. + e_.*x_]^ m_.*(a_ + b_.*cos[d_. + e_.*x_]^n_ + c_.*cos[d_. + e_.*x_]^n2_)^ p_., x_Symbol] := Module[{f = FreeFactors[Tan[d + e*x], x]}, f^(m + 1)/e* Subst[Int[ x^m*ExpandToSum[c + b*(1 + f^2*x^2)^(n/2) + a*(1 + f^2*x^2)^n, x]^p/(1 + f^2*x^2)^(n*p + 1), x], x, Tan[d + e*x]/f]] /; FreeQ[{a, b, c, d, e, m}, x] && EqQ[n2, 2*n] && IntegerQ[n/2] && IntegerQ[p]
Int[cot[d_. + e_.*x_]^ m_.*(a_. + b_.*sin[d_. + e_.*x_]^n_. + c_.*sin[d_. + e_.*x_]^n2_.)^p_., x_Symbol] := Int[ExpandTrig[(1 - sin[d + e*x]^2)^(m/ 2)*(a + b*sin[d + e*x]^n + c*sin[d + e*x]^(2*n))^p/ sin[d + e*x]^m, x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[n, p]
Int[tan[d_. + e_.*x_]^ m_.*(a_. + b_.*cos[d_. + e_.*x_]^n_. + c_.*cos[d_. + e_.*x_]^n2_.)^p_., x_Symbol] := Int[ExpandTrig[(1 - cos[d + e*x]^2)^(m/ 2)*(a + b*cos[d + e*x]^n + c*cos[d + e*x]^(2*n))^p/ cos[d + e*x]^m, x], x] /; FreeQ[{a, b, c, d, e}, x] && EqQ[n2, 2*n] && IntegerQ[m/2] && NeQ[b^2 - 4*a*c, 0] && IntegersQ[n, p]
Int[(A_ + B_.*sin[d_. + e_.*x_])*(a_ + b_.*sin[d_. + e_.*x_] + c_.*sin[d_. + e_.*x_]^2)^n_, x_Symbol] := 1/(4^n*c^n)* Int[(A + B*Sin[d + e*x])*(b + 2*c*Sin[d + e*x])^(2*n), x] /; FreeQ[{a, b, c, d, e, A, B}, x] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[n]
Int[(A_ + B_.*cos[d_. + e_.*x_])*(a_ + b_.*cos[d_. + e_.*x_] + c_.*cos[d_. + e_.*x_]^2)^n_, x_Symbol] := 1/(4^n*c^n)* Int[(A + B*Cos[d + e*x])*(b + 2*c*Cos[d + e*x])^(2*n), x] /; FreeQ[{a, b, c, d, e, A, B}, x] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[n]
Int[(A_ + B_.*sin[d_. + e_.*x_])*(a_ + b_.*sin[d_. + e_.*x_] + c_.*sin[d_. + e_.*x_]^2)^n_, x_Symbol] := (a + b*Sin[d + e*x] + c*Sin[d + e*x]^2)^ n/(b + 2*c*Sin[d + e*x])^(2*n)* Int[(A + B*Sin[d + e*x])*(b + 2*c*Sin[d + e*x])^(2*n), x] /; FreeQ[{a, b, c, d, e, A, B}, x] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[n]]
Int[(A_ + B_.*cos[d_. + e_.*x_])*(a_ + b_.*cos[d_. + e_.*x_] + c_.*cos[d_. + e_.*x_]^2)^n_, x_Symbol] := (a + b*Cos[d + e*x] + c*Cos[d + e*x]^2)^ n/(b + 2*c*Cos[d + e*x])^(2*n)* Int[(A + B*Cos[d + e*x])*(b + 2*c*Cos[d + e*x])^(2*n), x] /; FreeQ[{a, b, c, d, e, A, B}, x] && EqQ[b^2 - 4*a*c, 0] && Not[IntegerQ[n]]
Int[(A_ + B_.*sin[d_. + e_.*x_])/(a_. + b_.*sin[d_. + e_.*x_] + c_.*sin[d_. + e_.*x_]^2), x_Symbol] := Module[{q = Rt[b^2 - 4*a*c, 2]}, (B + (b*B - 2*A*c)/q)*Int[1/(b + q + 2*c*Sin[d + e*x]), x] + (B - (b*B - 2*A*c)/q)*Int[1/(b - q + 2*c*Sin[d + e*x]), x]] /; FreeQ[{a, b, c, d, e, A, B}, x] && NeQ[b^2 - 4*a*c, 0]
Int[(A_ + B_.*cos[d_. + e_.*x_])/(a_. + b_.*cos[d_. + e_.*x_] + c_.*cos[d_. + e_.*x_]^2), x_Symbol] := Module[{q = Rt[b^2 - 4*a*c, 2]}, (B + (b*B - 2*A*c)/q)*Int[1/(b + q + 2*c*Cos[d + e*x]), x] + (B - (b*B - 2*A*c)/q)*Int[1/(b - q + 2*c*Cos[d + e*x]), x]] /; FreeQ[{a, b, c, d, e, A, B}, x] && NeQ[b^2 - 4*a*c, 0]
Int[(A_ + B_.*sin[d_. + e_.*x_])*(a_. + b_.*sin[d_. + e_.*x_] + c_.*sin[d_. + e_.*x_]^2)^n_, x_Symbol] := Int[ExpandTrig[(A + B*sin[d + e*x])*(a + b*sin[d + e*x] + c*sin[d + e*x]^2)^n, x], x] /; FreeQ[{a, b, c, d, e, A, B}, x] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n]
Int[(A_ + B_.*cos[d_. + e_.*x_])*(a_. + b_.*cos[d_. + e_.*x_] + c_.*cos[d_. + e_.*x_]^2)^n_, x_Symbol] := Int[ExpandTrig[(A + B*cos[d + e*x])*(a + b*cos[d + e*x] + c*cos[d + e*x]^2)^n, x], x] /; FreeQ[{a, b, c, d, e, A, B}, x] && NeQ[b^2 - 4*a*c, 0] && IntegerQ[n]
