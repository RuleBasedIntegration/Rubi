
(* ::Subsection::Closed:: *)
(* 8.7 Zeta function *)
Int[Zeta[2, a_. + b_.*x_], x_Symbol] := Int[PolyGamma[1, a + b*x], x] /; FreeQ[{a, b}, x]
Int[Zeta[s_, a_. + b_.*x_], x_Symbol] := -Zeta[s - 1, a + b*x]/(b*(s - 1)) /; FreeQ[{a, b, s}, x] && NeQ[s, 1] && NeQ[s, 2]
Int[(c_. + d_.*x_)^m_.*Zeta[2, a_. + b_.*x_], x_Symbol] := Int[(c + d*x)^m*PolyGamma[1, a + b*x], x] /; FreeQ[{a, b, c, d}, x] && RationalQ[m]
Int[(c_. + d_.*x_)^m_.*Zeta[s_, a_. + b_.*x_], x_Symbol] := -(c + d*x)^m*Zeta[s - 1, a + b*x]/(b*(s - 1)) + d*m/(b*(s - 1))*Int[(c + d*x)^(m - 1)*Zeta[s - 1, a + b*x], x] /; FreeQ[{a, b, c, d, s}, x] && NeQ[s, 1] && NeQ[s, 2] && GtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*Zeta[s_, a_. + b_.*x_], x_Symbol] := (c + d*x)^(m + 1)*Zeta[s, a + b*x]/(d*(m + 1)) + b*s/(d*(m + 1))*Int[(c + d*x)^(m + 1)*Zeta[s + 1, a + b*x], x] /; FreeQ[{a, b, c, d, s}, x] && NeQ[s, 1] && NeQ[s, 2] && LtQ[m, -1]
