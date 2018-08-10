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

BuildIntegrationRules[] := BuildIntegrationRules[#, FileNameJoin[{$dir, "IntegrationRules"}]]& /@ FileNames["*.nb", {$ruleDir}, Infinity];
BuildIntegrationRules[file_String /; FileExistsQ[file], outDir_String /; DirectoryQ[outDir]] := Module[
  {
    files,
    sectionName,
    sourceAsList,
    outDir2 = StringReplace[DirectoryName[file], $ruleDir -> outDir]
  },
  sectionName = FileBaseName[file];
  PrintTemporary["Exporting all notebooks from " <> sectionName];


  sourceAsList = Prepend[
    exprToSource /@ DeleteCases[NotebookImport[file, "Code" -> "HeldExpression"], HoldComplete[Null]],
    subSectionComment[FileBaseName[file]]
  ];
  If[Not@DirectoryQ[outDir2],
    CreateDirectory[outDir2]
  ];
  Export[FileNameJoin[{outDir2, sectionName <> ".m"}], Prepend[sourceAsList, sectionComment[sectionName]], "Table"]
];

exprToSource[HoldComplete[expr_]] := ToString[Unevaluated[expr], InputForm];
sectionComment[message_String] := TemplateApply["\n(* ::Section:: *)\n(* `` *)", message];
subSectionComment[message_String] := TemplateApply["\n(* ::Subsection::Closed:: *)\n(* `` *)", message];

End[]; (* `Private` *)

EndPackage[]