
(* ::Subsection::Closed:: *)
(* 4.3.11 (e x)^m (a+b tan(c+d x^n))^p *)
Int[(a_. + b_.*Tan[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["1747e58e"]] := 1/n*Subst[Int[x^(1/n - 1)*(a + b*Tan[c + d*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, p}, x] && IGtQ[1/n, 0] && IntegerQ[p]
Int[(a_. + b_.*Cot[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["15015bd7"]] := 1/n*Subst[Int[x^(1/n - 1)*(a + b*Cot[c + d*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, p}, x] && IGtQ[1/n, 0] && IntegerQ[p]
Int[(a_. + b_.*Tan[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["14c331e0"]] := Unintegrable[(a + b*Tan[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, n, p}, x]
Int[(a_. + b_.*Cot[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["118c2765"]] := Unintegrable[(a + b*Cot[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, n, p}, x]
Int[(a_. + b_.*Tan[c_. + d_.*u_^n_])^p_., x_Symbol, _:RubiNotebookReference["104e4d52"]] := 1/Coefficient[u, x, 1]* Subst[Int[(a + b*Tan[c + d*x^n])^p, x], x, u] /; FreeQ[{a, b, c, d, n, p}, x] && LinearQ[u, x] && NeQ[u, x]
Int[(a_. + b_.*Cot[c_. + d_.*u_^n_])^p_., x_Symbol, _:RubiNotebookReference["1208f30b"]] := 1/Coefficient[u, x, 1]* Subst[Int[(a + b*Cot[c + d*x^n])^p, x], x, u] /; FreeQ[{a, b, c, d, n, p}, x] && LinearQ[u, x] && NeQ[u, x]
Int[(a_. + b_.*Tan[u_])^p_., x_Symbol, _:RubiNotebookReference["13ca993c"]] := Int[(a + b*Tan[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[(a_. + b_.*Cot[u_])^p_., x_Symbol, _:RubiNotebookReference["1896de01"]] := Int[(a + b*Cot[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[x_^m_.*(a_. + b_.*Tan[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["1954b436"]] := 1/n*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*Tan[c + d*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, m, n, p}, x] && IGtQ[Simplify[(m + 1)/n], 0] && IntegerQ[p]
Int[x_^m_.*(a_. + b_.*Cot[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["8dc07375"]] := 1/n*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*(a + b*Cot[c + d*x])^p, x], x, x^n] /; FreeQ[{a, b, c, d, m, n, p}, x] && IGtQ[Simplify[(m + 1)/n], 0] && IntegerQ[p]
Int[x_^m_.*Tan[c_. + d_.*x_^n_]^2, x_Symbol, _:RubiNotebookReference["8c021942"]] := x^(m - n + 1)*Tan[c + d*x^n]/(d*n) - Int[x^m, x] - (m - n + 1)/(d*n)*Int[x^(m - n)*Tan[c + d*x^n], x] /; FreeQ[{c, d, m, n}, x]
Int[x_^m_.*Cot[c_. + d_.*x_^n_]^2, x_Symbol, _:RubiNotebookReference["8e44a71b"]] := -x^(m - n + 1)*Cot[c + d*x^n]/(d*n) - Int[x^m, x] + (m - n + 1)/(d*n)*Int[x^(m - n)*Cot[c + d*x^n], x] /; FreeQ[{c, d, m, n}, x]
(* Int[x_^m_.*Tan[a_.+b_.*x_^n_]^p_,x_Symbol] :=  x^(m-n+1)*Tan[a+b*x^n]^(p-1)/(b*n*(p-1)) - (m-n+1)/(b*n*(p-1))*Int[x^(m-n)*Tan[a+b*x^n]^(p-1),x] - Int[x^m*Tan[a+b*x^n]^(p-2),x] /; FreeQ[{a,b},x] && LtQ[0,n,m+1] &&  GtQ[p,1] *)
(* Int[x_^m_.*Cot[a_.+b_.*x_^n_]^p_,x_Symbol] :=  -x^(m-n+1)*Cot[a+b*x^n]^(p-1)/(b*n*(p-1)) + (m-n+1)/(b*n*(p-1))*Int[x^(m-n)*Cot[a+b*x^n]^(p-1),x] - Int[x^m*Cot[a+b*x^n]^(p-2),x] /; FreeQ[{a,b},x] && LtQ[0,n,m+1] &&  GtQ[p,1] *)
(* Int[x_^m_.*Tan[a_.+b_.*x_^n_]^p_,x_Symbol] :=  x^(m-n+1)*Tan[a+b*x^n]^(p+1)/(b*n*(p+1)) - (m-n+1)/(b*n*(p+1))*Int[x^(m-n)*Tan[a+b*x^n]^(p+1),x] - Int[x^m*Tan[a+b*x^n]^(p+2),x] /; FreeQ[{a,b},x] && LtQ[0,n,m+1] &&  LtQ[p,-1] *)
(* Int[x_^m_.*Cot[a_.+b_.*x_^n_]^p_,x_Symbol] :=  -x^(m-n+1)*Cot[a+b*x^n]^(p+1)/(b*n*(p+1)) + (m-n+1)/(b*n*(p+1))*Int[x^(m-n)*Cot[a+b*x^n]^(p+1),x] - Int[x^m*Cot[a+b*x^n]^(p+2),x] /; FreeQ[{a,b},x] && LtQ[0,n,m+1] &&  LtQ[p,-1] *)
Int[x_^m_.*(a_. + b_.*Tan[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["888f65f0"]] := Unintegrable[x^m*(a + b*Tan[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n, p}, x]
Int[x_^m_.*(a_. + b_.*Cot[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["83d322cd"]] := Unintegrable[x^m*(a + b*Cot[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, m, n, p}, x]
Int[(e_*x_)^m_.*(a_. + b_.*Tan[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["821148fa"]] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Tan[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x]
Int[(e_*x_)^m_.*(a_. + b_.*Cot[c_. + d_.*x_^n_])^p_., x_Symbol, _:RubiNotebookReference["9f75dc9b"]] := e^IntPart[m]*(e*x)^FracPart[m]/x^FracPart[m]* Int[x^m*(a + b*Cot[c + d*x^n])^p, x] /; FreeQ[{a, b, c, d, e, m, n, p}, x]
Int[(e_*x_)^m_.*(a_. + b_.*Tan[u_])^p_., x_Symbol, _:RubiNotebookReference["9eb7b6ac"]] := Int[(e*x)^m*(a + b*Tan[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, e, m, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[(e_*x_)^m_.*(a_. + b_.*Cot[u_])^p_., x_Symbol, _:RubiNotebookReference["9cf108f5"]] := Int[(e*x)^m*(a + b*Cot[ExpandToSum[u, x]])^p, x] /; FreeQ[{a, b, e, m, p}, x] && BinomialQ[u, x] && Not[BinomialMatchQ[u, x]]
Int[x_^m_.*Sec[a_. + b_.*x_^n_.]^p_.*Tan[a_. + b_.*x_^n_.]^q_., x_Symbol, _:RubiNotebookReference["9d3362c2"]] := x^(m - n + 1)*Sec[a + b*x^n]^p/(b*n*p) - (m - n + 1)/(b*n*p)*Int[x^(m - n)*Sec[a + b*x^n]^p, x] /; FreeQ[{a, b, p}, x] && IntegerQ[n] && GeQ[m, n] && EqQ[q, 1]
Int[x_^m_.*Csc[a_. + b_.*x_^n_.]^p_.*Cot[a_. + b_.*x_^n_.]^q_., x_Symbol, _:RubiNotebookReference["987c7447"]] := -x^(m - n + 1)*Csc[a + b*x^n]^p/(b*n*p) + (m - n + 1)/(b*n*p)*Int[x^(m - n)*Csc[a + b*x^n]^p, x] /; FreeQ[{a, b, p}, x] && IntegerQ[n] && GeQ[m, n] && EqQ[q, 1]
