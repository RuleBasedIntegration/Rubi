
(* ::Subsection::Closed:: *)
(* 6.1.10 (c+d x)^m (a+b sinh)^n *)
Int[u_^m_.*(a_. + b_.*Sinh[v_])^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*(a + b*Sinh[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
Int[u_^m_.*(a_. + b_.*Cosh[v_])^n_., x_Symbol] := Int[ExpandToSum[u, x]^m*(a + b*Cosh[ExpandToSum[v, x]])^n, x] /; FreeQ[{a, b, m, n}, x] && LinearQ[{u, v}, x] && Not[LinearMatchQ[{u, v}, x]]
