
(* ::Subsection::Closed:: *)
(* 8.10 Bessel functions *)
Int[BesselJ[1, a_. + b_.*x_], x_Symbol] := -BesselJ[0, a + b*x]/b /; FreeQ[{a, b}, x]
Int[BesselJ[n_, a_. + b_.*x_], x_Symbol] := -2*BesselJ[n - 1, a + b*x]/b + Int[BesselJ[n - 2, a + b*x], x] /; FreeQ[{a, b}, x] && IGtQ[(n - 1)/2, 0]
(* Int[BesselJ[n_,a_.+b_.*x_],x_Symbol] :=  (-1)^n*Int[BesselJ[-n,a+b*x],x] /; FreeQ[{a,b},x] && ILtQ[n,0] *)
Int[BesselJ[n_, a_. + b_.*x_], x_Symbol] := (a + b*x)^(n + 1)* HypergeometricPFQ[{(n + 1)/2}, {(n + 3)/2, n + 1}, -1/4*(a + b*x)^2]/(2^n*b*Gamma[n + 2]) /; FreeQ[{a, b, n}, x]
