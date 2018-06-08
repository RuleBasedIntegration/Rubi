(* ::Package:: *)

(* ::Title:: *)
(*Rubi (Rule-Based Integrator) Package*)


BeginPackage["Rubi`"];


Int::usage = If[Global`$LoadShowSteps===True,
"Int[expn, var] returns the antiderivative (indefinite integral) of <expn> with respect to <var>.
Int[expn, var, Step] displays the first step used to integrate <expn> with respect to <var>, and returns the intermediate result.
Int[expn, var, Steps] displays all the steps used to integrate <expn> with respect to <var>, and returns the antiderivative.
Int[expn, var, Stats], before returning the antiderivative of <expn> with respect to <var>, displays a list of statistics of the form {a, b, c, d, e} where 
   <a> is the number of steps used to integrate <expn>, 
   <b> is the number of distinct rules used to integrate <expn>, 
   <c> is the leaf count size of <expn>, 
   <d> is the leaf count size of the antiderivative, and
   <e> is the rule-to-size ratio of the integration (i.e. the quotient of <b> and <c>).
Int[{expn1, expn2, ...}, var] returns a list of the antiderivatives of <expn1>, <expn2>, ... each with respect to <var>.
Int[expn, {var, a, b}] returns the limit of the antiderivative of <expn> as <var> approaches <b> minus the limit as <var> approaches <a>.  Note that this difference will NOT always equal the definite integral of <expn> from <a> to <b>.",

"Int[expn, var] returns the antiderivative (indefinite integral) of <expn> with respect to <var>.
Int[{expn1, expn2, ...},var] returns a list of the antiderivatives of <expn1>, <expn2>, ... each with respect to <var>.
Int[expn, {var, a, b}] returns the limit of the antiderivative of <expn> as <var> approaches <b> minus the limit as <var> approaches <a>.  Note that this difference will NOT always equal the definite integral of <expn> from <a> to <b>."];


Dist::usage = "Dist[expn1,expn2,var] distributes <expn1> over <expn2>.";
Subst::usage = "Subst[expn1,var,expn2] substitutes <expn2> for <var> in <expn1>.";
Step::usage = "Int[expn, var, Step] displays the first step in the integration of <expn> with respect to <var> and returns the intermediate result."
Steps::usage = "Int[expn, var, Steps] displays all the steps in the integration of <expn> with respect to <var> and returns the antiderivative."
Stats::usage = "Int[expn, var, Stats] before returning the antiderivative <expn> with respect to <var>, displays a list {a, b, c, d, e} of statistics."


Unintegrable::usage = "Unintegrable[expn,var] indicates <expn> is not integrable with respect to <var> in closed-form.";
CannotIntegrate::usage = "CannotIntegrate[expn,var] indicates Rubi is unable to integrate <expn> with respect to <var>.";


$Unintegrable::usage = "If $Unintegrable is True and <expn> is not integrable with respect to <var> in terms of the functions Rubi uses to express antiderivatives, Int[expn,var] returns Unintegrable[expn,var]."


$RuleColor::usage = "$RuleColor is the color used to display rules when showing integration steps. The default rule color is red.";
$ConditionColor::usage = "$ConditionColor is the color used to display application conditions when showing integration steps. The default condition color is blue.";
$StepCounter::usage = "If the ShowSteps package has been loaded and $StepCounter is an integer, it is incremented each time an integration rule is applied.";


sin::usage = "Inert sine function";
cos::usage = "Inert cosine function";
tan::usage = "Inert tangent function";
cot::usage = "Inert cotangent function";
sec::usage = "Inert secant function";
csc::usage = "Inert cosecant function";


Begin["`Private`"];


$LoadShowSteps = Global`$LoadShowSteps


LoadRules[filename_String] := (
  StatusBarPrint["Loading "<>filename<>".m..."];
  Get[FileNameJoin[{DirectoryName[System`Private`$InputFileName],filename<>".m"}]];
  StatusBarPrint[""] )


StatusBarPrint[strg_String] :=
  If[$Notebooks, CurrentValue[EvaluationNotebook[],WindowStatusArea] = strg]


Unprotect[Int];  Clear[Int];  Clear[Unintegrable];  Clear[CannotIntegrate];


LoadRules["Integration utility functions"];
LoadRules["9.1 Integrand simplification rules"];


LoadRules["1.1.1 Linear binomial products"];
LoadRules["1.1.3 General binomial products"];
LoadRules["1.2.1 Quadratic trinomial products"];
LoadRules["1.1.2 Quadratic binomial products"];
LoadRules["1.2.2 Quartic trinomial products"];
LoadRules["1.2.3 General trinomial products"];
LoadRules["1.2.4 Improper trinomial products"];
LoadRules["1.1.4 Improper binomial products"];
LoadRules["1.3 Miscellaneous algebraic functions"];


If[Global`$LoadElementaryFunctionRules===True,
  LoadRules["9.3 Piecewise linear functions"];
  LoadRules["2 Exponentials"];
  LoadRules["3 Logarithms"];
  LoadRules["4.1 Sine"];
  LoadRules["4.2 Tangent"];
  LoadRules["4.3 Secant"];
  LoadRules["4.4 Miscellaneous trig functions"];
  LoadRules["5 Inverse trig functions"];
  LoadRules["6 Hyperbolic functions"];
  LoadRules["7 Inverse hyperbolic functions"];
  LoadRules["8 Special functions"];
  LoadRules["9.2 Derivative integration rules"]];


LoadRules["9.4 Miscellaneous integration rules"];


If[$LoadShowSteps===True, LoadRules["ShowStep routines"]];


$RuleCount = Length[DownValues[Int]];


StatusBarPrint["Modifying "<>ToString[$RuleCount]<>" integration rules to distribute coefficients over sums..."];
FixIntRules[];
StatusBarPrint[""];


If[$LoadShowSteps===True,
  StatusBarPrint["Modifying "<>ToString[$RuleCount]<>" integration rules to display steps..."];
  StepFunction[Int];
  StatusBarPrint[""]];


Int[u_,{x_Symbol,a_,b_}] :=
  With[{result=Int[u,x]},
  Limit[result,x->b]-Limit[result,x->a]]


Int[{u__},x_Symbol] :=
  Map[Function[Int[#,x]],{u}]


Protect[Int];


$Unintegrable = False;


Unintegrable[u_,x_] := 
  If[$Unintegrable===True,
    Defer[Unintegrable][u,x],
  Defer[Int][u,x]];

CannotIntegrate[u_,x_] := Defer[Int][u,x];


End [];
EndPackage [];
