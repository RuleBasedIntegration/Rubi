
(* ::Subsection::Closed:: *)
(* 6.5.10 (c+d x)^m (a+b sech)^n *)
Int[u_^m_.*Sech[v_]^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*Sech[ExpandToSum[v, x]]^n, x] /; FreeQ[{m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
Int[u_^m_.*Csch[v_]^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*Csch[ExpandToSum[v, x]]^n, x] /; FreeQ[{m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
