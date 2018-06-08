(* Mathematica Package *)
(* Created by Mathematica Plugin for IntelliJ IDEA, see http://wlplugin.halirutan.de/ *)

(* :Title: RubiPackageTools *)
(* :Context: RubiPackageTools` *)
(* :Author: patrick *)
(* :Date: 2018-06-08 *)

(* :Package Version: 0.1 *)
(* :Mathematica Version: 11.2 *)
(* :Copyright: (c) 2018 patrick *)
(* :Keywords: *)
(* :Discussion: *)

BeginPackage["RubiPackageTools`"];

CreatePackageFilesFromNotebooks::usage = "CreatePackageFilesFromNotebooks[] creates the .m package files for the rules from the notebooks";

Begin["`Private`"];
$dir = DirectoryName@System`Private`$InputFileName;
$ruleDir = FileNameJoin[{$dir, "..", "IntegrationRuleNotebooks"}];

ClearAll[CreatePackageFilesFromNotebooks];
CreatePackageFilesFromNotebooks[] := CreatePackageFilesFromNotebooks[
  FileNameJoin[{$dir, "IntegrationRules"}]
];
CreatePackageFilesFromNotebooks[outDir_String /; DirectoryQ[outDir]] := Module[
  {
    subDirs = FileNames["*", {$ruleDir}]
  },
  Function[dir,
    Module[{
      files = FileNames["*.nb", {dir}, Infinity],
      sourceAsList
    },
      PrintTemporary["Exporting all notebooks from " <> FileNameSplit[dir][[-1]]];
      sourceAsList = Flatten@Table[
        Prepend[
          exprToSource /@ DeleteCases[NotebookImport[f, "Code" -> "HeldExpression"], HoldComplete[Null]],
          "\n(* File: " <> FileBaseName[f] <> " *)\n"
        ], {f, files}];
      Export[FileNameJoin[{outDir, FileNameSplit[dir][[-1]] <> ".m"}], sourceAsList, "Table"]
    ]] /@ subDirs;
];

exprToSource[HoldComplete[expr_]] := ToString[Unevaluated[expr], InputForm];

End[]; (* `Private` *)

EndPackage[]