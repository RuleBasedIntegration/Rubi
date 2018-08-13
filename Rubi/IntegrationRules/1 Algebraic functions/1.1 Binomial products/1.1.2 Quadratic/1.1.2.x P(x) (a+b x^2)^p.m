
(* ::Subsection::Closed:: *)
(* 1.1.2.x P(x) (a+b x^2)^p *)
Int[Pq_*(a_ + b_.*x_^2)^p_., x_Symbol] := Int[ExpandIntegrand[Pq*(a + b*x^2)^p, x], x] /; FreeQ[{a, b}, x] && PolyQ[Pq, x] && IGtQ[p, -2]
Int[Pq_*(a_ + b_.*x_^2)^p_, x_Symbol] := Int[x*PolynomialQuotient[Pq, x, x]*(a + b*x^2)^p, x] /; FreeQ[{a, b, p}, x] && PolyQ[Pq, x] && EqQ[Coeff[Pq, x, 0], 0] && Not[MatchQ[Pq, x^m_.*u_. /; IntegerQ[m]]]
Int[Px_*(a_ + b_.*x_^2)^p_., x_Symbol] := Int[PolynomialQuotient[Px, a + b*x^2, x]*(a + b*x^2)^(p + 1), x] /; FreeQ[{a, b, p}, x] && PolyQ[Px, x] && EqQ[PolynomialRemainder[Px, a + b*x^2, x], 0]
Int[Pq_*(a_ + b_.*x_^2)^p_, x_Symbol] := With[{A = Coeff[Pq, x, 0], Q = PolynomialQuotient[Pq - Coeff[Pq, x, 0], x^2, x]}, A*x*(a + b*x^2)^(p + 1)/a + 1/a*Int[x^2*(a + b*x^2)^p*(a*Q - A*b*(2*p + 3)), x]] /; FreeQ[{a, b}, x] && PolyQ[Pq, x^2] && ILtQ[p + 1/2, 0] && LtQ[Expon[Pq, x] + 2*p + 1, 0]
Int[Pq_*(a_ + b_.*x_^2)^p_, x_Symbol] := With[{Q = PolynomialQuotient[Pq, a + b*x^2, x], f = Coeff[PolynomialRemainder[Pq, a + b*x^2, x], x, 0], g = Coeff[PolynomialRemainder[Pq, a + b*x^2, x], x, 1]}, (a*g - b*f*x)*(a + b*x^2)^(p + 1)/(2*a*b*(p + 1)) + 1/(2*a*(p + 1))* Int[(a + b*x^2)^(p + 1)* ExpandToSum[2*a*(p + 1)*Q + f*(2*p + 3), x], x]] /; FreeQ[{a, b}, x] && PolyQ[Pq, x] && LtQ[p, -1]
Int[Pq_*(a_ + b_.*x_^2)^p_, x_Symbol] := With[{q = Expon[Pq, x], e = Coeff[Pq, x, Expon[Pq, x]]}, e*x^(q - 1)*(a + b*x^2)^(p + 1)/(b*(q + 2*p + 1)) + 1/(b*(q + 2*p + 1))* Int[(a + b*x^2)^p* ExpandToSum[ b*(q + 2*p + 1)*Pq - a*e*(q - 1)*x^(q - 2) - b*e*(q + 2*p + 1)*x^q, x], x]] /; FreeQ[{a, b, p}, x] && PolyQ[Pq, x] && Not[LeQ[p, -1]]
