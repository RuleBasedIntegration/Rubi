
(* ::Subsection::Closed:: *)
(* 6.1.13 (d+e x)^m sinh(a+b x+c x^2)^n *)
Int[Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := 1/2*Int[E^(a + b*x + c*x^2), x] - 1/2*Int[E^(-a - b*x - c*x^2), x] /; FreeQ[{a, b, c}, x]
Int[Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := 1/2*Int[E^(a + b*x + c*x^2), x] + 1/2*Int[E^(-a - b*x - c*x^2), x] /; FreeQ[{a, b, c}, x]
Int[Sinh[a_. + b_.*x_ + c_.*x_^2]^n_, x_Symbol] := Int[ExpandTrigReduce[Sinh[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[n, 1]
Int[Cosh[a_. + b_.*x_ + c_.*x_^2]^n_, x_Symbol] := Int[ExpandTrigReduce[Cosh[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c}, x] && IGtQ[n, 1]
Int[Sinh[v_]^n_., x_Symbol] := Int[Sinh[ExpandToSum[v, x]]^n, x] /; IGtQ[n, 0] && QuadraticQ[v, x] && Not[QuadraticMatchQ[v, x]]
Int[Cosh[v_]^n_., x_Symbol] := Int[Cosh[ExpandToSum[v, x]]^n, x] /; IGtQ[n, 0] && QuadraticQ[v, x] && Not[QuadraticMatchQ[v, x]]
Int[(d_. + e_.*x_)*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*Cosh[a + b*x + c*x^2]/(2*c) /; FreeQ[{a, b, c, d, e}, x] && EqQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*Sinh[a + b*x + c*x^2]/(2*c) /; FreeQ[{a, b, c, d, e}, x] && EqQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*Cosh[a + b*x + c*x^2]/(2*c) - (b*e - 2*c*d)/(2*c)*Int[Sinh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*Sinh[a + b*x + c*x^2]/(2*c) - (b*e - 2*c*d)/(2*c)*Int[Cosh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*(d + e*x)^(m - 1)*Cosh[a + b*x + c*x^2]/(2*c) - e^2*(m - 1)/(2*c)* Int[(d + e*x)^(m - 2)*Cosh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && GtQ[m, 1] && EqQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*(d + e*x)^(m - 1)*Sinh[a + b*x + c*x^2]/(2*c) - e^2*(m - 1)/(2*c)* Int[(d + e*x)^(m - 2)*Sinh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && GtQ[m, 1] && EqQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*(d + e*x)^(m - 1)*Cosh[a + b*x + c*x^2]/(2*c) - (b*e - 2*c*d)/(2*c)* Int[(d + e*x)^(m - 1)*Sinh[a + b*x + c*x^2], x] - e^2*(m - 1)/(2*c)* Int[(d + e*x)^(m - 2)*Cosh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && GtQ[m, 1] && NeQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*(d + e*x)^(m - 1)*Sinh[a + b*x + c*x^2]/(2*c) - (b*e - 2*c*d)/(2*c)* Int[(d + e*x)^(m - 1)*Cosh[a + b*x + c*x^2], x] - e^2*(m - 1)/(2*c)* Int[(d + e*x)^(m - 2)*Sinh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && GtQ[m, 1] && NeQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := (d + e*x)^(m + 1)*Sinh[a + b*x + c*x^2]/(e*(m + 1)) - 2*c/(e^2*(m + 1))* Int[(d + e*x)^(m + 2)*Cosh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && LtQ[m, -1] && EqQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := (d + e*x)^(m + 1)*Cosh[a + b*x + c*x^2]/(e*(m + 1)) - 2*c/(e^2*(m + 1))* Int[(d + e*x)^(m + 2)*Sinh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && LtQ[m, -1] && EqQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := (d + e*x)^(m + 1)*Sinh[a + b*x + c*x^2]/(e*(m + 1)) - (b*e - 2*c*d)/(e^2*(m + 1))* Int[(d + e*x)^(m + 1)*Cosh[a + b*x + c*x^2], x] - 2*c/(e^2*(m + 1))* Int[(d + e*x)^(m + 2)*Cosh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && LtQ[m, -1] && NeQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := (d + e*x)^(m + 1)*Cosh[a + b*x + c*x^2]/(e*(m + 1)) - (b*e - 2*c*d)/(e^2*(m + 1))* Int[(d + e*x)^(m + 1)*Sinh[a + b*x + c*x^2], x] - 2*c/(e^2*(m + 1))* Int[(d + e*x)^(m + 2)*Sinh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && LtQ[m, -1] && NeQ[b*e - 2*c*d, 0]
Int[(d_. + e_.*x_)^m_.*Sinh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := Unintegrable[(d + e*x)^m*Sinh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e, m}, x]
Int[(d_. + e_.*x_)^m_.*Cosh[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := Unintegrable[(d + e*x)^m*Cosh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e, m}, x]
Int[(d_. + e_.*x_)^m_.*Sinh[a_. + b_.*x_ + c_.*x_^2]^n_, x_Symbol] := Int[ExpandTrigReduce[(d + e*x)^m, Sinh[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c, d, e, m}, x] && IGtQ[n, 1]
Int[(d_. + e_.*x_)^m_.*Cosh[a_. + b_.*x_ + c_.*x_^2]^n_, x_Symbol] := Int[ExpandTrigReduce[(d + e*x)^m, Cosh[a + b*x + c*x^2]^n, x], x] /; FreeQ[{a, b, c, d, e, m}, x] && IGtQ[n, 1]
Int[u_^m_.*Sinh[v_]^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*Sinh[ExpandToSum[v, x]]^n, x] /; FreeQ[m, x] && IGtQ[n, 0] && LinearQ[u, x] && QuadraticQ[v, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[v, x]]
Int[u_^m_.*Cosh[v_]^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*Cosh[ExpandToSum[v, x]]^n, x] /; FreeQ[m, x] && IGtQ[n, 0] && LinearQ[u, x] && QuadraticQ[v, x] && Not[LinearMatchQ[u, x] && QuadraticMatchQ[v, x]]
