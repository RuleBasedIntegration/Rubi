
(* ::Subsection::Closed:: *)
(* 4.5.1.3 (d sin)^n (a+b sec)^m *)
Int[(g_.*cos[e_. + f_.*x_])^p_.*(a_ + b_.*csc[e_. + f_.*x_])^m_., x_Symbol] := Int[(g*Cos[e + f*x])^p*(b + a*Sin[e + f*x])^m/Sin[e + f*x]^m, x] /; FreeQ[{a, b, e, f, g, p}, x] && IntegerQ[m]
Int[cos[e_. + f_.*x_]^p_.*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -1/(f*b^(p - 1))* Subst[Int[(-a + b*x)^((p - 1)/2)*(a + b*x)^(m + (p - 1)/2)/ x^(p + 1), x], x, Csc[e + f*x]] /; FreeQ[{a, b, e, f, m}, x] && IntegerQ[(p - 1)/2] && EqQ[a^2 - b^2, 0]
Int[cos[e_. + f_.*x_]^p_.*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := -1/f* Subst[Int[(-1 + x)^((p - 1)/2)*(1 + x)^((p - 1)/2)*(a + b*x)^m/ x^(p + 1), x], x, Csc[e + f*x]] /; FreeQ[{a, b, e, f, m}, x] && IntegerQ[(p - 1)/2] && NeQ[a^2 - b^2, 0]
Int[(a_ + b_.*csc[e_. + f_.*x_])^m_/cos[e_. + f_.*x_]^2, x_Symbol] := Tan[e + f*x]*(a + b*Csc[e + f*x])^m/f + b*m*Int[Csc[e + f*x]*(a + b*Csc[e + f*x])^(m - 1), x] /; FreeQ[{a, b, e, f, m}, x]
Int[(g_.*cos[e_. + f_.*x_])^p_.*(a_ + b_.*csc[e_. + f_.*x_])^m_, x_Symbol] := Sin[e + f*x]^ FracPart[m]*(a + b*Csc[e + f*x])^FracPart[m]/(b + a*Sin[e + f*x])^ FracPart[m]* Int[(g*Cos[e + f*x])^p*(b + a*Sin[e + f*x])^m/Sin[e + f*x]^m, x] /; FreeQ[{a, b, e, f, g, m, p}, x] && (EqQ[a^2 - b^2, 0] || IntegersQ[2*m, p])
Int[(g_.*cos[e_. + f_.*x_])^p_.*(a_ + b_.*csc[e_. + f_.*x_])^m_., x_Symbol] := Unintegrable[(g*Cos[e + f*x])^p*(a + b*Csc[e + f*x])^m, x] /; FreeQ[{a, b, e, f, g, m, p}, x]
(* Int[(g_.*sec[e_.+f_.*x_])^p_*(a_+b_.*csc[e_.+f_.*x_])^m_.,x_Symbol]  := Int[(g*Sec[e+f*x])^p*(b+a*Sin[e+f*x])^m/Sin[e+f*x]^m,x] /;  FreeQ[{a,b,e,f,g,p},x] && Not[IntegerQ[p]] && IntegerQ[m] *)
Int[(g_.*sec[e_. + f_.*x_])^p_*(a_ + b_.*csc[e_. + f_.*x_])^m_., x_Symbol] := g^IntPart[p]*(g*Sec[e + f*x])^FracPart[p]*Cos[e + f*x]^FracPart[p]* Int[(a + b*Csc[e + f*x])^m/Cos[e + f*x]^p, x] /; FreeQ[{a, b, e, f, g, m, p}, x] && Not[IntegerQ[p]]
