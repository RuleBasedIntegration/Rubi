
(* ::Section:: *)
(* 6.3.12 (d+e x)^m tanh(a+b x+c x^2)^n *)

(* ::Subsection::Closed:: *)
(* 6.3.12 (d+e x)^m tanh(a+b x+c x^2)^n *)
Int[Tanh[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Integral[Tanh[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, n}, x]
Int[Coth[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Integral[Coth[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, n}, x]
Int[((d_.) + (e_.)*(x_))*Tanh[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := e*(Log[Cosh[a + b*x + c*x^2]]/(2*c)) + ((2*c*d - b*e)/(2*c))*Int[Tanh[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x]
Int[((d_.) + (e_.)*(x_))*Coth[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2], x_Symbol] := e*(Log[Sinh[a + b*x + c*x^2]]/(2*c)) + ((2*c*d - b*e)/(2*c))*Int[Coth[a + b*x + c*x^2], x] /; FreeQ[{a, b, c, d, e}, x]
Int[((d_.) + (e_.)*(x_))^(m_.)*Tanh[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Integral[(d + e*x)^m*Tanh[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, d, e, m, n}, x]
Int[((d_.) + (e_.)*(x_))^(m_.)*Coth[(a_.) + (b_.)*(x_) + (c_.)*(x_)^2]^(n_.), x_Symbol] := Integral[(d + e*x)^m*Coth[a + b*x + c*x^2]^n, x] /; FreeQ[{a, b, c, d, e, m, n}, x]