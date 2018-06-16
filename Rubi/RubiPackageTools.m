(* Mathematica Package *)
(* Created by Mathematica Plugin for IntelliJ IDEA, see http://wlplugin.halirutan.de/ *)

(* :Title: RubiPackageTools *)
(* :Context: RubiPackageTools` *)
(* :Author: patrick *)
(* :Date: 2018-06-08 *)
(* :Discussion: This package is only intended for development purpose! It extracts all integration rules from the
  * notebooks and zips them together in several packages that are then loaded by Rubi. The structure, i.e. which notebooks
  * are packed into one package, is as important as the order in which they are loaded in Rubi.m.
  *
  * The core function of this package imports the "Code" cells from a notebook and converts them to Expressions which
  * are then exported into the .m package file.
  * *)

BeginPackage["Rubi`RubiPackageTools`"];

BuildIntegrationRules::usage = "BuildIntegrationRules[] creates the .m package files for the rules from the notebooks";

Begin["`Private`"];
$dir = DirectoryName@System`Private`$InputFileName;
$ruleDir = FileNameJoin[{$dir, "..", "IntegrationRuleNotebooks"}];

$rulePackages = Flatten@{
  FileNames["*", {FileNameJoin[{$ruleDir, "1 Algebraic functions/1.1 Binomial products"}]}],
  FileNames["*", {FileNameJoin[{$ruleDir, "1 Algebraic functions/1.2 Trinomial products"}]}],
  FileNameJoin[{$ruleDir, "1 Algebraic functions/1.3 Miscellaneous"}],

  FileNameJoin[{$ruleDir, "2 Exponentials"}],
  FileNameJoin[{$ruleDir, "3 Logarithms"}],
  FileNameJoin[{$ruleDir, "4 Trig functions"}],
  FileNameJoin[{$ruleDir, "5 Inverse trig functions"}],
  FileNameJoin[{$ruleDir, "6 Hyperbolic functions"}],
  FileNameJoin[{$ruleDir, "7 Inverse hyperbolic functions"}],
  FileNameJoin[{$ruleDir, "8 Special functions"}],

  FileNames["*.nb", FileNameJoin[{$ruleDir, "9 Miscellaneous"}]]
};

BuildIntegrationRules[] := BuildIntegrationRules[#, FileNameJoin[{$dir, "IntegrationRules"}]]& /@ $rulePackages;
BuildIntegrationRules[section_String /; DirectoryQ[section] || FileExistsQ[section], outDir_String /; DirectoryQ[outDir]] := Module[
  {
    files,
    sectionName,
    sourceAsList
  },
  files = If[DirectoryQ[section], FileNames["*.nb", {section}, Infinity], {section}];
  sectionName = If[DirectoryQ[section], FileNameSplit[section][[-1]], FileBaseName[section]];
  PrintTemporary["Exporting all notebooks from " <> sectionName];
  sourceAsList = Flatten@Table[
    Prepend[
      exprToSource /@ DeleteCases[NotebookImport[f, "Code" -> "HeldExpression"], HoldComplete[Null]],
      subSectionComment[FileBaseName[f]]
    ], {f, files}];
  Export[FileNameJoin[{outDir, sectionName <> ".m"}], Prepend[sourceAsList, sectionComment[sectionName]], "Table"]
];

exprToSource[HoldComplete[expr_]] := ToString[Unevaluated[expr], InputForm];
sectionComment[message_String] := TemplateApply["\n(* ::Section:: *)\n(* `` *)", message];
subSectionComment[message_String] := TemplateApply["\n(* ::Subsection::Closed:: *)\n(* `` *)", message];

End[]; (* `Private` *)

EndPackage[]