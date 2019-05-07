
(* ::Subsection::Closed:: *)
(* 9.1 Integrand simplification rules *)
(* Int[u_.*(v_+w_)^p_.,x_Symbol] := Int[u*w^p,x] /; FreeQ[p,x] &&  EqQ[v,0] *)
Int[u_.*(a_ + b_.*x_^n_.)^p_., x_Symbol, _:RubiNotebookReference["12725fe2"]] := Int[u*(b*x^n)^p, x] /; FreeQ[{a, b, n, p}, x] && EqQ[a, 0]
Int[u_.*(a_. + b_.*x_^n_.)^p_., x_Symbol, _:RubiNotebookReference["13b035d5"]] := Int[u*a^p, x] /; FreeQ[{a, b, n, p}, x] && EqQ[b, 0]
Int[u_.*(a_ + b_.*x_^n_. + c_.*x_^j_.)^p_., x_Symbol, _:RubiNotebookReference["16ff2350"]] := Int[u*(b*x^n + c*x^(2*n))^p, x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[j, 2*n] && EqQ[a, 0]
Int[u_.*(a_. + b_.*x_^n_. + c_.*x_^j_.)^p_., x_Symbol, _:RubiNotebookReference["173d4967"]] := Int[u*(a + c*x^(2*n))^p, x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[j, 2*n] && EqQ[b, 0]
Int[u_.*(a_. + b_.*x_^n_. + c_.*x_^j_.)^p_., x_Symbol, _:RubiNotebookReference["157bf73e"]] := Int[u*(a + b*x^n)^p, x] /; FreeQ[{a, b, c, n, p}, x] && EqQ[j, 2*n] && EqQ[c, 0]
Int[u_.*(a_.*v_ + b_.*v_ + w_.)^p_., x_Symbol, _:RubiNotebookReference["14b99d09"]] := Int[u*((a + b)*v + w)^p, x] /; FreeQ[{a, b}, x] && Not[FreeQ[v, x]]
Int[u_.*Px_^p_, x_Symbol, _:RubiNotebookReference["1fe5da34"]] := Int[u*Px^Simplify[p], x] /; PolyQ[Px, x] && Not[RationalQ[p]] && FreeQ[p, x] && RationalQ[Simplify[p]]
Int[a_, x_Symbol, _:RubiNotebookReference["1e27b003"]] := a*x /; FreeQ[a, x]
Int[a_*(b_ + c_.*x_), x_Symbol, _:RubiNotebookReference["db74c452"]] := a*(b + c*x)^2/(2*c) /; FreeQ[{a, b, c}, x]
Int[-u_, x_Symbol, _:RubiNotebookReference["dab6ae65"]] := Identity[-1]*Int[u, x]
Int[Complex[0, a_]*u_, x_Symbol, _:RubiNotebookReference["d8f0103c"]] := Complex[Identity[0], a]*Int[u, x] /; FreeQ[a, x] && EqQ[a^2, 1]
Int[a_*u_, x_Symbol, _:RubiNotebookReference["d9327a0b"]] := a*Int[u, x] /; FreeQ[a, x] && Not[MatchQ[u, b_*v_ /; FreeQ[b, x]]]
If[TrueQ[$LoadShowSteps], Int[u_, x_Symbol] := ShowStep["", "Int[a*u + b*v + ...,x]", "a*Integrate[u,x] + b*Integrate[v,x] + ...", Hold[ IntSum[u, x]]] /; SimplifyFlag && SumQ[u], Int[u_, x_Symbol, _:RubiNotebookReference["dc7d6c8e"]] := IntSum[u, x] /; SumQ[u]]
Int[(c_.*x_)^m_.*u_, x_Symbol, _:RubiNotebookReference["ddbf06b9"]] := Int[ExpandIntegrand[(c*x)^m*u, x], x] /; FreeQ[{c, m}, x] && SumQ[u] && Not[LinearQ[u, x]] && Not[MatchQ[u, a_ + b_.*v_ /; FreeQ[{a, b}, x] && InverseFunctionQ[v]]]
Int[u_.*(a_.*x_^n_)^m_, x_Symbol, _:RubiNotebookReference["dff9b8e0"]] := a^IntPart[m]*(a*x^n)^FracPart[m]/x^(n*FracPart[m])* Int[u*x^(m*n), x] /; FreeQ[{a, m, n}, x] && Not[IntegerQ[m]]
Int[u_.*v_^m_.*(b_*v_)^n_, x_Symbol, _:RubiNotebookReference["de3bd2d7"]] := 1/b^m*Int[u*(b*v)^(m + n), x] /; FreeQ[{b, n}, x] && IntegerQ[m]
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_, x_Symbol, _:RubiNotebookReference["d56795ea"]] := a^(m + 1/2)*b^(n - 1/2)*Sqrt[b*v]/Sqrt[a*v]*Int[u*v^(m + n), x] /; FreeQ[{a, b, m}, x] && Not[IntegerQ[m]] && IGtQ[n + 1/2, 0] && IntegerQ[m + n]
(* Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=  b^(n-1/2)*Sqrt[b*v]/(a^(n-1/2)*Sqrt[a*v])*Int[u*(a*v)^(m+n),x] /;  FreeQ[{a,b,m},x] && Not[IntegerQ[m]] && IGtQ[n+1/2,0] &&  Not[IntegerQ[m+n]] *)
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_, x_Symbol, _:RubiNotebookReference["c9c16bbc"]] := a^(m - 1/2)*b^(n + 1/2)*Sqrt[a*v]/Sqrt[b*v]*Int[u*v^(m + n), x] /; FreeQ[{a, b, m}, x] && Not[IntegerQ[m]] && ILtQ[n - 1/2, 0] && IntegerQ[m + n]
(* Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=  b^(n+1/2)*Sqrt[a*v]/(a^(n+1/2)*Sqrt[b*v])*Int[u*(a*v)^(m+n),x] /;  FreeQ[{a,b,m},x] && Not[IntegerQ[m]] && ILtQ[n-1/2,0] &&  Not[IntegerQ[m+n]] *)
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_, x_Symbol, _:RubiNotebookReference["ca45bfd2"]] := a^(m + n)*(b*v)^n/(a*v)^n*Int[u*v^(m + n), x] /; FreeQ[{a, b, m, n}, x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && IntegerQ[m + n]
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_, x_Symbol, _:RubiNotebookReference["cb87d5e5"]] := b^IntPart[n]*(b*v)^FracPart[n]/(a^IntPart[n]*(a*v)^FracPart[n])* Int[u*(a*v)^(m + n), x] /; FreeQ[{a, b, m, n}, x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[IntegerQ[m + n]]
Int[u_.*(a_ + b_.*v_)^m_.*(c_ + d_.*v_)^n_., x_Symbol, _:RubiNotebookReference["cec8c360"]] := (b/d)^m*Int[u*(c + d*v)^(m + n), x] /; FreeQ[{a, b, c, d, n}, x] && EqQ[b*c - a*d, 0] && IntegerQ[m] && (Not[IntegerQ[n]] || SimplerQ[c + d*x, a + b*x])
Int[u_.*(a_ + b_.*v_)^m_*(c_ + d_.*v_)^n_, x_Symbol, _:RubiNotebookReference["cf0aa957"]] := (b/d)^m*Int[u*(c + d*v)^(m + n), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[b*c - a*d, 0] && GtQ[b/d, 0] && Not[IntegerQ[m] || IntegerQ[n]]
Int[u_.*(a_ + b_.*v_)^m_*(c_ + d_.*v_)^n_, x_Symbol, _:RubiNotebookReference["cd4c170e"]] := (a + b*v)^m/(c + d*v)^m* Int[u*(c + d*v)^(m + n), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[b*c - a*d, 0] && Not[IntegerQ[m] || IntegerQ[n] || GtQ[b/d, 0]]
(* Int[u_.*(a_.*v_)^m_*(b_.*v_+c_.*v_^2),x_Symbol] :=  1/a*Int[u*(a*v)^(m+1)*(b+c*v),x] /; FreeQ[{a,b,c},x] && LeQ[m,-1] *)
Int[u_.*(a_ + b_.*v_)^m_*(A_. + B_.*v_ + C_.*v_^2), x_Symbol, _:RubiNotebookReference["c7d23a04"]] := 1/b^2*Int[u*(a + b*v)^(m + 1)*Simp[b*B - a*C + b*C*v, x], x] /; FreeQ[{a, b, A, B, C}, x] && EqQ[A*b^2 - a*b*B + a^2*C, 0] && LeQ[m, -1]
Int[u_.*(a_ + b_.*x_^n_.)^m_.*(c_ + d_.*x_^q_.)^p_., x_Symbol, _:RubiNotebookReference["c6105033"]] := (d/a)^p*Int[u*(a + b*x^n)^(m + p)/x^(n*p), x] /; FreeQ[{a, b, c, d, m, n}, x] && EqQ[q, -n] && IntegerQ[p] && EqQ[a*c - b*d, 0] && Not[IntegerQ[m] && NegQ[n]]
Int[u_.*(a_ + b_.*x_^n_.)^m_.*(c_ + d_.*x_^j_)^p_., x_Symbol, _:RubiNotebookReference["717d0cd9"]] := (-b^2/d)^m*Int[u*(a - b*x^n)^(-m), x] /; FreeQ[{a, b, c, d, m, n, p}, x] && EqQ[j, 2*n] && EqQ[p, -m] && EqQ[b^2*c + a^2*d, 0] && GtQ[a, 0] && LtQ[d, 0]
Int[u_.*(a_ + b_.*x_ + c_.*x_^2)^p_., x_Symbol, _:RubiNotebookReference["70bf66ee"]] := Int[u*Cancel[(b/2 + c*x)^(2*p)/c^p], x] /; FreeQ[{a, b, c}, x] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
Int[u_.*(a_ + b_.*x_^n_ + c_.*x_^n2_.)^p_., x_Symbol, _:RubiNotebookReference["72f9d8b7"]] := 1/c^p*Int[u*(b/2 + c*x^n)^(2*p), x] /; FreeQ[{a, b, c, n}, x] && EqQ[n2, 2*n] && EqQ[b^2 - 4*a*c, 0] && IntegerQ[p]
