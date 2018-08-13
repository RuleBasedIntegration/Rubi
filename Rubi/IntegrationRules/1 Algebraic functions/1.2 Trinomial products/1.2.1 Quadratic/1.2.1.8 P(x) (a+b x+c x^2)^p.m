
(* ::Subsection::Closed:: *)
(* 1.2.1.8 P(x) (a+b x+c x^2)^p *)
Int[Pq_*(a_ + b_.*x_ + c_.*x_^2)^p_., x_Symbol] := Int[ExpandIntegrand[Pq*(a + b*x + c*x^2)^p, x], x] /; FreeQ[{a, b, c}, x] && PolyQ[Pq, x] && IGtQ[p, -2]
Int[Pq_*(a_. + b_.*x_ + c_.*x_^2)^p_, x_Symbol] := Int[x*PolynomialQuotient[Pq, x, x]*(a + b*x + c*x^2)^p, x] /; FreeQ[{a, b, c, p}, x] && PolyQ[Pq, x] && EqQ[Coeff[Pq, x, 0], 0] && Not[MatchQ[Pq, x^m_.*u_. /; IntegerQ[m]]]
Int[Pq_*(a_ + b_.*x_ + c_.*x_^2)^p_, x_Symbol] := (a + b*x + c*x^2)^ FracPart[p]/((4*c)^IntPart[p]*(b + 2*c*x)^(2*FracPart[p]))* Int[Pq*(b + 2*c*x)^(2*p), x] /; FreeQ[{a, b, c, p}, x] && PolyQ[Pq, x] && EqQ[b^2 - 4*a*c, 0]
Int[Pq_*(a_. + b_.*x_ + c_.*x_^2)^p_, x_Symbol] := With[{Q = PolynomialQuotient[Pq, a + b*x + c*x^2, x], f = Coeff[PolynomialRemainder[Pq, a + b*x + c*x^2, x], x, 0], g = Coeff[PolynomialRemainder[Pq, a + b*x + c*x^2, x], x, 1]}, (b*f - 2*a*g + (2*c*f - b*g)* x)*(a + b*x + c*x^2)^(p + 1)/((p + 1)*(b^2 - 4*a*c)) + 1/((p + 1)*(b^2 - 4*a*c))* Int[(a + b*x + c*x^2)^(p + 1)* ExpandToSum[(p + 1)*(b^2 - 4*a*c)*Q - (2*p + 3)*(2*c*f - b*g), x], x]] /; FreeQ[{a, b, c}, x] && PolyQ[Pq, x] && NeQ[b^2 - 4*a*c, 0] && LtQ[p, -1]
Int[Pq_*(a_. + b_.*x_ + c_.*x_^2)^p_, x_Symbol] := With[{q = Expon[Pq, x], e = Coeff[Pq, x, Expon[Pq, x]]}, e*x^(q - 1)*(a + b*x + c*x^2)^(p + 1)/(c*(q + 2*p + 1)) + 1/(c*(q + 2*p + 1))*Int[(a + b*x + c*x^2)^p* ExpandToSum[ c*(q + 2*p + 1)*Pq - a*e*(q - 1)*x^(q - 2) - b*e*(q + p)*x^(q - 1) - c*e*(q + 2*p + 1)*x^q, x], x]] /; FreeQ[{a, b, c, p}, x] && PolyQ[Pq, x] && NeQ[b^2 - 4*a*c, 0] && Not[LeQ[p, -1]]
