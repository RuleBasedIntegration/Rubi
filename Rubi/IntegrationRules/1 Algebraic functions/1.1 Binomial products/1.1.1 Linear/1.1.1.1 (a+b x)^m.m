
(* ::Subsection::Closed:: *)
(* 1.1.1.1 (a+b x)^m *)
Int[1/x_, x_Symbol] := Log[x]
Int[x_^m_., x_Symbol] := x^(m + 1)/(m + 1) /; FreeQ[m, x] && NeQ[m, -1]
Int[1/(a_ + b_.*x_), x_Symbol] := Log[RemoveContent[a + b*x, x]]/b /; FreeQ[{a, b}, x]
Int[(a_. + b_.*x_)^m_, x_Symbol] := (a + b*x)^(m + 1)/(b*(m + 1)) /; FreeQ[{a, b, m}, x] && NeQ[m, -1]
Int[(a_. + b_.*u_)^m_, x_Symbol] := 1/Coefficient[u, x, 1]*Subst[Int[(a + b*x)^m, x], x, u] /; FreeQ[{a, b, m}, x] && LinearQ[u, x] && NeQ[u, x]
