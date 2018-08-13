
(* ::Subsection::Closed:: *)
(* 4.3.12 (d+e x)^m tan(a+b x+c x^2)^n *)
Int[Tan[a_. + b_.*x_ + c_.*x_^2]^n_., x_Symbol] := Unintegrable[Tan[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, n}, x]
Int[Cot[a_. + b_.*x_ + c_.*x_^2]^n_., x_Symbol] := Unintegrable[Cot[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, n}, x]
Int[(d_ + e_.*x_)*Tan[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := -e*Log[Cos[a + b*x + c*x^2]]/(2*c) /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0]
Int[(d_ + e_.*x_)*Cot[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*Log[Sin[a + b*x + c*x^2]]/(2*c) /; FreeQ[{a, b, c, d, e}, x] && EqQ[2*c*d - b*e, 0]
Int[(d_. + e_.*x_)*Tan[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := -e*Log[Cos[a + b*x + c*x^2]]/(2*c) + (2*c*d - b*e)/(2*c)*Int[Tan[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[2*c*d - b*e, 0]
Int[(d_. + e_.*x_)*Cot[a_. + b_.*x_ + c_.*x_^2], x_Symbol] := e*Log[Sin[a + b*x + c*x^2]]/(2*c) + (2*c*d - b*e)/(2*c)*Int[Cot[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x] && NeQ[2*c*d - b*e, 0]
(* Int[x_^m_*Tan[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=  -x^(m-1)*Log[Cos[a+b*x+c*x^2]]/(2*c) - b/(2*c)*Int[x^(m-1)*Tan[a+b*x+c*x^2],x] + (m-1)/(2*c)*Int[x^(m-2)*Log[Cos[a+b*x+c*x^2]],x] /;  FreeQ[{a,b,c},x] && GtQ[m,1] *)
(* Int[x_^m_*Cot[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=  x^(m-1)*Log[Sin[a+b*x+c*x^2]]/(2*c) - b/(2*c)*Int[x^(m-1)*Cot[a+b*x+c*x^2],x] - (m-1)/(2*c)*Int[x^(m-2)*Log[Sin[a+b*x+c*x^2]],x] /;  FreeQ[{a,b,c},x] && GtQ[m,1]*)
Int[(d_. + e_.*x_)^m_.*Tan[a_. + b_.*x_ + c_.*x_^2]^n_., x_Symbol] := Unintegrable[(d + e*x)^m*Tan[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, d, e, m, n}, x]
Int[(d_. + e_.*x_)^m_.*Cot[a_. + b_.*x_ + c_.*x_^2]^n_., x_Symbol] := Unintegrable[(d + e*x)^m*Cot[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, d, e, m, n}, x]
