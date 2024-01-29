
(* ::Subsection::Closed:: *)
(* 6.1.11 (e x)^m (a+b x^n)^p sinh *)
Int[(a_ + b_.*x_^n_)^p_.*Sinh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Sinh[c + d*x], (a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[p, 0]
Int[(a_ + b_.*x_^n_)^p_.*Cosh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Cosh[c + d*x], (a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[p, 0]
Int[(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := x^(-n + 1)*(a + b*x^n)^(p + 1)*Sinh[c + d*x]/(b*n*(p + 1)) - (-n + 1)/(b*n*(p + 1))* Int[x^(-n)*(a + b*x^n)^(p + 1)*Sinh[c + d*x], x] - d/(b*n*(p + 1))* Int[x^(-n + 1)*(a + b*x^n)^(p + 1)*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && IntegerQ[p] && IGtQ[n, 0] && LtQ[p, -1] && GtQ[n, 2]
Int[(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := x^(-n + 1)*(a + b*x^n)^(p + 1)*Cosh[c + d*x]/(b*n*(p + 1)) - (-n + 1)/(b*n*(p + 1))* Int[x^(-n)*(a + b*x^n)^(p + 1)*Cosh[c + d*x], x] - d/(b*n*(p + 1))* Int[x^(-n + 1)*(a + b*x^n)^(p + 1)*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && IntegerQ[p] && IGtQ[n, 0] && LtQ[p, -1] && GtQ[n, 2]
Int[(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Sinh[c + d*x], (a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, 0] && IGtQ[n, 0] && (EqQ[n, 2] || EqQ[p, -1])
Int[(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Cosh[c + d*x], (a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, 0] && IGtQ[n, 0] && (EqQ[n, 2] || EqQ[p, -1])
Int[(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := Int[x^(n*p)*(b + a*x^(-n))^p*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, 0] && ILtQ[n, 0]
Int[(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := Int[x^(n*p)*(b + a*x^(-n))^p*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, 0] && ILtQ[n, 0]
Int[(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := Unintegrable[(a + b*x^n)^p*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d, n, p}, x]
Int[(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := Unintegrable[(a + b*x^n)^p*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d, n, p}, x]
Int[(e_.*x_)^m_.*(a_ + b_.*x_^n_)^p_.*Sinh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Sinh[c + d*x], (e*x)^m*(a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IGtQ[p, 0]
Int[(e_.*x_)^m_.*(a_ + b_.*x_^n_)^p_.*Cosh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Cosh[c + d*x], (e*x)^m*(a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IGtQ[p, 0]
Int[(e_.*x_)^m_.*(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := e^m*(a + b*x^n)^(p + 1)*Sinh[c + d*x]/(b*n*(p + 1)) - d*e^m/(b*n*(p + 1))*Int[(a + b*x^n)^(p + 1)*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IntegerQ[p] && EqQ[m - n + 1, 0] && LtQ[p, -1] && (IntegerQ[n] || GtQ[e, 0])
Int[(e_.*x_)^m_.*(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := e^m*(a + b*x^n)^(p + 1)*Cosh[c + d*x]/(b*n*(p + 1)) - d*e^m/(b*n*(p + 1))*Int[(a + b*x^n)^(p + 1)*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d, e, m, n}, x] && IntegerQ[p] && EqQ[m - n + 1, 0] && LtQ[p, -1] && (IntegerQ[n] || GtQ[e, 0])
Int[x_^m_.*(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := x^(m - n + 1)*(a + b*x^n)^(p + 1)*Sinh[c + d*x]/(b*n*(p + 1)) - (m - n + 1)/(b*n*(p + 1))* Int[x^(m - n)*(a + b*x^n)^(p + 1)*Sinh[c + d*x], x] - d/(b*n*(p + 1))* Int[x^(m - n + 1)*(a + b*x^n)^(p + 1)*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, -1] && IGtQ[n, 0] && RationalQ[m] && (GtQ[m - n + 1, 0] || GtQ[n, 2])
Int[x_^m_.*(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := x^(m - n + 1)*(a + b*x^n)^(p + 1)*Cosh[c + d*x]/(b*n*(p + 1)) - (m - n + 1)/(b*n*(p + 1))* Int[x^(m - n)*(a + b*x^n)^(p + 1)*Cosh[c + d*x], x] - d/(b*n*(p + 1))* Int[x^(m - n + 1)*(a + b*x^n)^(p + 1)*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, -1] && IGtQ[n, 0] && RationalQ[m] && (GtQ[m - n + 1, 0] || GtQ[n, 2])
Int[x_^m_.*(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Sinh[c + d*x], x^m*(a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, 0] && IntegerQ[m] && IGtQ[n, 0] && (EqQ[n, 2] || EqQ[p, -1])
Int[x_^m_.*(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := Int[ExpandIntegrand[Cosh[c + d*x], x^m*(a + b*x^n)^p, x], x] /; FreeQ[{a, b, c, d}, x] && ILtQ[p, 0] && IntegerQ[m] && IGtQ[n, 0] && (EqQ[n, 2] || EqQ[p, -1])
Int[x_^m_.*(a_ + b_.*x_^n_)^p_*Sinh[c_. + d_.*x_], x_Symbol] := Int[x^(m + n*p)*(b + a*x^(-n))^p*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d, m}, x] && ILtQ[p, 0] && ILtQ[n, 0]
Int[x_^m_.*(a_ + b_.*x_^n_)^p_*Cosh[c_. + d_.*x_], x_Symbol] := Int[x^(m + n*p)*(b + a*x^(-n))^p*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d, m}, x] && ILtQ[p, 0] && ILtQ[n, 0]
Int[(e_.*x_)^m_.*(a_ + b_.*x_^n_)^p_.*Sinh[c_. + d_.*x_], x_Symbol] := Unintegrable[(e*x)^m*(a + b*x^n)^p*Sinh[c + d*x], x] /; FreeQ[{a, b, c, d, e, m, n, p}, x]
Int[(e_.*x_)^m_.*(a_ + b_.*x_^n_)^p_.*Cosh[c_. + d_.*x_], x_Symbol] := Unintegrable[(e*x)^m*(a + b*x^n)^p*Cosh[c + d*x], x] /; FreeQ[{a, b, c, d, e, m, n, p}, x]
