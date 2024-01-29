
(* ::Subsection::Closed:: *)
(* 4.7.6 (c+d x)^m trig(a+b x)^n trig(a+b x)^p *)
Int[(c_. + d_.*x_)^m_.*Sin[a_. + b_.*x_]^n_.*Cos[a_. + b_.*x_], x_Symbol] := (c + d*x)^m*Sin[a + b*x]^(n + 1)/(b*(n + 1)) - d*m/(b*(n + 1))*Int[(c + d*x)^(m - 1)*Sin[a + b*x]^(n + 1), x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(c_. + d_.*x_)^m_.*Sin[a_. + b_.*x_]*Cos[a_. + b_.*x_]^n_., x_Symbol] := -(c + d*x)^m*Cos[a + b*x]^(n + 1)/(b*(n + 1)) + d*m/(b*(n + 1))*Int[(c + d*x)^(m - 1)*Cos[a + b*x]^(n + 1), x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(c_. + d_.*x_)^m_.*Sin[a_. + b_.*x_]^n_.*Cos[a_. + b_.*x_]^p_., x_Symbol] := Int[ExpandTrigReduce[(c + d*x)^m, Sin[a + b*x]^n*Cos[a + b*x]^p, x], x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(c_. + d_.*x_)^m_.*Sin[a_. + b_.*x_]^n_.*Tan[a_. + b_.*x_]^p_., x_Symbol] := -Int[(c + d*x)^m*Sin[a + b*x]^n*Tan[a + b*x]^(p - 2), x] + Int[(c + d*x)^m*Sin[a + b*x]^(n - 2)*Tan[a + b*x]^p, x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(c_. + d_.*x_)^m_.*Cos[a_. + b_.*x_]^n_.*Cot[a_. + b_.*x_]^p_., x_Symbol] := -Int[(c + d*x)^m*Cos[a + b*x]^n*Cot[a + b*x]^(p - 2), x] + Int[(c + d*x)^m*Cos[a + b*x]^(n - 2)*Cot[a + b*x]^p, x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[n, 0] && IGtQ[p, 0]
Int[(c_. + d_.*x_)^m_.*Sec[a_. + b_.*x_]^n_.*Tan[a_. + b_.*x_]^p_., x_Symbol] := (c + d*x)^m*Sec[a + b*x]^n/(b*n) - d*m/(b*n)*Int[(c + d*x)^(m - 1)*Sec[a + b*x]^n, x] /; FreeQ[{a, b, c, d, n}, x] && EqQ[p, 1] && GtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]^n_.*Cot[a_. + b_.*x_]^p_., x_Symbol] := -(c + d*x)^m*Csc[a + b*x]^n/(b*n) + d*m/(b*n)*Int[(c + d*x)^(m - 1)*Csc[a + b*x]^n, x] /; FreeQ[{a, b, c, d, n}, x] && EqQ[p, 1] && GtQ[m, 0]
Int[(c_. + d_.*x_)^m_.*Sec[a_. + b_.*x_]^2*Tan[a_. + b_.*x_]^n_., x_Symbol] := (c + d*x)^m*Tan[a + b*x]^(n + 1)/(b*(n + 1)) - d*m/(b*(n + 1))*Int[(c + d*x)^(m - 1)*Tan[a + b*x]^(n + 1), x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]^2*Cot[a_. + b_.*x_]^n_., x_Symbol] := -(c + d*x)^m*Cot[a + b*x]^(n + 1)/(b*(n + 1)) + d*m/(b*(n + 1))*Int[(c + d*x)^(m - 1)*Cot[a + b*x]^(n + 1), x] /; FreeQ[{a, b, c, d, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(c_. + d_.*x_)^m_.*Sec[a_. + b_.*x_]*Tan[a_. + b_.*x_]^p_, x_Symbol] := -Int[(c + d*x)^m*Sec[a + b*x]*Tan[a + b*x]^(p - 2), x] + Int[(c + d*x)^m*Sec[a + b*x]^3*Tan[a + b*x]^(p - 2), x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[p/2, 0]
Int[(c_. + d_.*x_)^m_.*Sec[a_. + b_.*x_]^n_.*Tan[a_. + b_.*x_]^p_, x_Symbol] := -Int[(c + d*x)^m*Sec[a + b*x]^n*Tan[a + b*x]^(p - 2), x] + Int[(c + d*x)^m*Sec[a + b*x]^(n + 2)*Tan[a + b*x]^(p - 2), x] /; FreeQ[{a, b, c, d, m, n}, x] && IGtQ[p/2, 0]
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]*Cot[a_. + b_.*x_]^p_, x_Symbol] := -Int[(c + d*x)^m*Csc[a + b*x]*Cot[a + b*x]^(p - 2), x] + Int[(c + d*x)^m*Csc[a + b*x]^3*Cot[a + b*x]^(p - 2), x] /; FreeQ[{a, b, c, d, m}, x] && IGtQ[p/2, 0]
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]^n_.*Cot[a_. + b_.*x_]^p_, x_Symbol] := -Int[(c + d*x)^m*Csc[a + b*x]^n*Cot[a + b*x]^(p - 2), x] + Int[(c + d*x)^m*Csc[a + b*x]^(n + 2)*Cot[a + b*x]^(p - 2), x] /; FreeQ[{a, b, c, d, m, n}, x] && IGtQ[p/2, 0]
Int[(c_. + d_.*x_)^m_.*Sec[a_. + b_.*x_]^n_.*Tan[a_. + b_.*x_]^p_., x_Symbol] := Module[{u = IntHide[Sec[a + b*x]^n*Tan[a + b*x]^p, x]}, Dist[(c + d*x)^m, u, x] - d*m*Int[(c + d*x)^(m - 1)*u, x]] /; FreeQ[{a, b, c, d, n, p}, x] && IGtQ[m, 0] && (IntegerQ[n/2] || IntegerQ[(p - 1)/2])
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]^n_.*Cot[a_. + b_.*x_]^p_., x_Symbol] := Module[{u = IntHide[Csc[a + b*x]^n*Cot[a + b*x]^p, x]}, Dist[(c + d*x)^m, u, x] - d*m*Int[(c + d*x)^(m - 1)*u, x]] /; FreeQ[{a, b, c, d, n, p}, x] && IGtQ[m, 0] && (IntegerQ[n/2] || IntegerQ[(p - 1)/2])
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]^n_.*Sec[a_. + b_.*x_]^n_., x_Symbol] := 2^n*Int[(c + d*x)^m*Csc[2*a + 2*b*x]^n, x] /; FreeQ[{a, b, c, d, m}, x] && IntegerQ[n] && RationalQ[m]
Int[(c_. + d_.*x_)^m_.*Csc[a_. + b_.*x_]^n_.*Sec[a_. + b_.*x_]^p_., x_Symbol] := Module[{u = IntHide[Csc[a + b*x]^n*Sec[a + b*x]^p, x]}, Dist[(c + d*x)^m, u, x] - d*m*Int[(c + d*x)^(m - 1)*u, x]] /; FreeQ[{a, b, c, d}, x] && IntegersQ[n, p] && GtQ[m, 0] && NeQ[n, p]
Int[u_^m_.*F_[v_]^n_.*G_[w_]^p_., x_Symbol] := Int[ExpandToSum[u, x]^m*F[ExpandToSum[v, x]]^n* G[ExpandToSum[v, x]]^p, x] /; FreeQ[{m, n, p}, x] && TrigQ[F] && TrigQ[G] && EqQ[v, w] && LinearQ[{u, v, w}, x] && Not[LinearMatchQ[{u, v, w}, x]]
Int[(e_. + f_.*x_)^m_.* Cos[c_. + d_.*x_]*(a_ + b_.*Sin[c_. + d_.*x_])^n_., x_Symbol] := (e + f*x)^m*(a + b*Sin[c + d*x])^(n + 1)/(b*d*(n + 1)) - f*m/(b*d*(n + 1))* Int[(e + f*x)^(m - 1)*(a + b*Sin[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(e_. + f_.*x_)^m_.* Sin[c_. + d_.*x_]*(a_ + b_.*Cos[c_. + d_.*x_])^n_., x_Symbol] := -(e + f*x)^m*(a + b*Cos[c + d*x])^(n + 1)/(b*d*(n + 1)) + f*m/(b*d*(n + 1))* Int[(e + f*x)^(m - 1)*(a + b*Cos[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(e_. + f_.*x_)^m_.* Sec[c_. + d_.*x_]^2*(a_ + b_.*Tan[c_. + d_.*x_])^n_., x_Symbol] := (e + f*x)^m*(a + b*Tan[c + d*x])^(n + 1)/(b*d*(n + 1)) - f*m/(b*d*(n + 1))* Int[(e + f*x)^(m - 1)*(a + b*Tan[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(e_. + f_.*x_)^m_.* Csc[c_. + d_.*x_]^2*(a_ + b_.*Cot[c_. + d_.*x_])^n_., x_Symbol] := -(e + f*x)^m*(a + b*Cot[c + d*x])^(n + 1)/(b*d*(n + 1)) + f*m/(b*d*(n + 1))* Int[(e + f*x)^(m - 1)*(a + b*Cot[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(e_. + f_.*x_)^m_.*Sec[c_. + d_.*x_]* Tan[c_. + d_.*x_]*(a_ + b_.*Sec[c_. + d_.*x_])^n_., x_Symbol] := (e + f*x)^m*(a + b*Sec[c + d*x])^(n + 1)/(b*d*(n + 1)) - f*m/(b*d*(n + 1))* Int[(e + f*x)^(m - 1)*(a + b*Sec[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(e_. + f_.*x_)^m_.*Csc[c_. + d_.*x_]* Cot[c_. + d_.*x_]*(a_ + b_.*Csc[c_. + d_.*x_])^n_., x_Symbol] := -(e + f*x)^m*(a + b*Csc[c + d*x])^(n + 1)/(b*d*(n + 1)) + f*m/(b*d*(n + 1))* Int[(e + f*x)^(m - 1)*(a + b*Csc[c + d*x])^(n + 1), x] /; FreeQ[{a, b, c, d, e, f, n}, x] && IGtQ[m, 0] && NeQ[n, -1]
Int[(e_. + f_.*x_)^m_.*Sin[a_. + b_.*x_]^p_.*Sin[c_. + d_.*x_]^q_., x_Symbol] := Int[ExpandTrigReduce[(e + f*x)^m, Sin[a + b*x]^p*Sin[c + d*x]^q, x], x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[p, 0] && IGtQ[q, 0] && IntegerQ[m]
Int[(e_. + f_.*x_)^m_.*Cos[a_. + b_.*x_]^p_.*Cos[c_. + d_.*x_]^q_., x_Symbol] := Int[ExpandTrigReduce[(e + f*x)^m, Cos[a + b*x]^p*Cos[c + d*x]^q, x], x] /; FreeQ[{a, b, c, d, e, f}, x] && IGtQ[p, 0] && IGtQ[q, 0] && IntegerQ[m]
Int[(e_. + f_.*x_)^m_.*Sin[a_. + b_.*x_]^p_.*Cos[c_. + d_.*x_]^q_., x_Symbol] := Int[ExpandTrigReduce[(e + f*x)^m, Sin[a + b*x]^p*Cos[c + d*x]^q, x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && IGtQ[p, 0] && IGtQ[q, 0]
Int[(e_. + f_.*x_)^m_.*F_[a_. + b_.*x_]^p_.*G_[c_. + d_.*x_]^q_., x_Symbol] := Int[ExpandTrigExpand[(e + f*x)^m*G[c + d*x]^q, F, c + d*x, p, b/d, x], x] /; FreeQ[{a, b, c, d, e, f, m}, x] && MemberQ[{Sin, Cos}, F] && MemberQ[{Sec, Csc}, G] && IGtQ[p, 0] && IGtQ[q, 0] && EqQ[b*c - a*d, 0] && IGtQ[b/d, 1]
