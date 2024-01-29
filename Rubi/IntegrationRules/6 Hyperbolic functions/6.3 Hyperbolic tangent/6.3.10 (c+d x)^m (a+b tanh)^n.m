
(* ::Subsection::Closed:: *)
(* 6.3.10 (c+d x)^m (a+b tanh)^n *)
Int[u_^m_.*(a_. + b_.*Tanh[v_])^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*(a + b*Tanh[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
Int[u_^m_.*(a_. + b_.*Coth[v_])^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*(a + b*Coth[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
