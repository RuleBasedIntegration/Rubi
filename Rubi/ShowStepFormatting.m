(* Mathematica Package *)
(* Created by Mathematica Plugin for IntelliJ IDEA, see http://wlplugin.halirutan.de/ *)

(* :Title: ShowStepFormatting *)
(* :Author: patrick *)
(* :Date: 2018-06-16 *)
(* :Discussion: This contains only the formatting definitions for the integration steps. *)

$RuleColor = Hue[0, .8, .5];
$ConditionColor = Hue[.39, .8, .5];
$IntermediateResultColor = Hue[.6, .8, .5];
$FontSize = 13;

(* TraditionalForm formatting for some Rubi functions *)
Format[HoldPattern[Dist[u_, v_, _]], TraditionalForm] := HoldForm[u * v];
Unprotect[Int]; Format[HoldPattern[Int[expr_, x_]], TraditionalForm] := HoldForm[Integrate[expr, x]];

FormatRubiStep::usage = "FormatRubiStep[step] displays an integration step as formatted box in TraditionalForm";
FormatRubiStep[RubiRule[cond_, HoldComplete[lhs_], HoldComplete[rhs_], rule_ : "General"]] := Module[
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
        Spacings -> {1, 2},
        Dividers -> {False, {2 -> LightGray, 3 -> LightGray}}];
  Item[DynamicModule[{open = False},
    Deploy@Framed[
      Grid[{{Opener@Dynamic@open,
        PaneSelector[{False -> transformation, True -> fullRule},
          Dynamic@open, ImageSize -> Automatic]}},
        Alignment -> {Left, Center}],
      FrameMargins -> 10, FrameStyle -> {AbsoluteThickness[1], LightGray}, RoundingRadius -> 3
    ]],
    Alignment -> Right]
];

FormatRubiStep[RubiIntermediateResult[HoldComplete[expr_]]] := Item[
  Tooltip[
    Button[
      Deploy@Framed[Style[TraditionalForm@HoldForm[expr], $FontSize, $IntermediateResultColor], FrameMargins -> 10, FrameStyle -> {AbsoluteThickness[1], LightGray}, RoundingRadius -> 3],
      CopyToClipboard[Defer[expr]], Appearance -> None],
    "Click to copy as input"
  ],
  Alignment -> Left
];

PrintRubiSteps::usage = "PrintRubiSteps[{steps..}] formats and prints a list of steps and rules from the integration process.";
PrintRubiSteps::err = "Could not print Rubi steps: ``";
PrintRubiSteps[{steps : {__}}] := Print[
  Panel[
    Column[FormatRubiStep /@ steps, Spacings -> 1],
    {Button["Copy Steps", CopyToClipboard[steps], ImageSize->Automatic, Tooltip -> "Copy list of steps as plain input", Appearance -> "Palette"]},
    {{Bottom, Right}}
    , Background -> GrayLevel@.98
  ]
];
PrintRubiSteps[arg___] := Message[PrintRubiSteps::err, {arg}];
