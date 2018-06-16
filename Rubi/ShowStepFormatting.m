(* Mathematica Package *)
(* Created by Mathematica Plugin for IntelliJ IDEA, see http://wlplugin.halirutan.de/ *)

(* :Title: ShowStepFormatting *)
(* :Author: patrick *)
(* :Date: 2018-06-16 *)
(* :Discussion: This contains only the formatting definitions for the integration steps. *)

$RuleColor = ColorData[99, 1];
$ConditionColor = ColorData[99, 3];
$IntermediateResultColor = ColorData[99, 7];
$FontSize = 13;

(*Format[RubiRule[cond_, HoldComplete[lhs_], HoldComplete[rhs_], rule_ : "General"]] := Deploy@Panel[*)
(*Grid[{*)
(*{*)
(*Style["Rubi Rule:", "Label", Darker@Gray],*)
(*Style[rule, "Label", $FontSize]},*)
(*{*)
(*Style["Condition:", "Label", Darker@Gray],*)
(*Style[If[cond === "", "None", cond], $FontSize, $ConditionColor]*)
(*},*)
(*{*)
(*Style["Transformation:", "Label", Darker@Gray],*)
(*Row[{*)
(*Style[TraditionalForm@HoldForm[lhs], $FontSize, $RuleColor],*)
(*Style["\[DoubleLongRightArrow]", $FontSize, $RuleColor],*)
(*Style[TraditionalForm@HoldForm[rhs], $FontSize, $RuleColor]*)
(*}, Spacer[10], Alignment -> Center*)
(*]*)
(*}*)
(*},*)
(*Alignment -> {{Right, Left}, {Center, Center, Center}},*)
(*Spacings -> {1, 1},*)
(*Dividers -> {False, {2 -> LightGray, 3 -> LightGray}}*)
(*]*)
(*];*)

Format[HoldPattern[Dist[u_, v_, _]], TraditionalForm] := HoldForm[u*v];
Unprotect[Int];
Format[HoldPattern[Int[expr_,x_]], TraditionalForm] := HoldForm[Integrate[expr,x]];
Protect[Int];
Format[RubiRule[cond_, HoldComplete[lhs_], HoldComplete[rhs_], rule_ : "General"]] := Module[
  {
    fullRule,
    transformation
  },
  transformation =
      Row[{Style[TraditionalForm@HoldForm[lhs], $FontSize, $RuleColor],
        Style["\[LongRightArrow]", $FontSize, $RuleColor],
        Style[TraditionalForm@HoldForm[rhs], $FontSize, $RuleColor]},
        Spacer[10], Alignment -> Center];
  fullRule =
      Grid[{{Style["Rubi Rule:", "Label", Gray],
        Style[rule, "Label"]}, {Style["Condition:", "Label", Gray],
        Style[If[cond === "", "None", cond], $FontSize, $ConditionColor]}, {Style[
        "Transformation:", "Label", Gray], transformation}},
        Alignment -> {{Right, Left}, {Center, Center, Center}},
        Spacings -> {1, 1},
        Dividers -> {False, {2 -> LightGray, 3 -> LightGray}}];
  Item[DynamicModule[{open = False},
    Deploy@Pane@
        Grid[{{Opener@Dynamic@open,
          PaneSelector[{False -> transformation, True -> fullRule},
            Dynamic@open, ImageSize -> Automatic]}},
          Alignment -> {Left, Center}]],
    Alignment -> Right]
];

Format[RubiIntermediateResult[HoldComplete[expr_]]] := Item[
  Tooltip[
    Button[
      Deploy@Pane[Style[TraditionalForm@HoldForm[expr], $FontSize, $IntermediateResultColor], FrameMargins -> 5],
      CopyToClipboard[Defer[expr]], Appearance -> None],
    "Click to copy as input"
  ],
  Alignment -> Left
];

PrintRubiSteps::usage = "PrintRubiSteps[{steps..}] formats and prints a list of steps and rules from the integration process.";
PrintRubiSteps::err = "Could not print Rubi steps: ``";
PrintRubiSteps[{steps : {__}}] := Print[Column[steps, Background -> {{GrayLevel@.97, GrayLevel@.99}}, Spacings -> 1]];
PrintRubiSteps[arg___] := Message[PrintRubiSteps::err, {arg}];
