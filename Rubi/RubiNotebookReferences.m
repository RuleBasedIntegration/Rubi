(* Mathematica Source File *)
(* Created by Mathematica Plugin for IntelliJ IDEA *)
(* :Author: patrick *)
(* :Date: 2018-12-26 *)

RubiNotebookReference::missing = "Cannot find reference for hash ``.";
RubiNotebookReference::notFound = "Cannot find notebook file for \"``\".";
RubiNotebookReference[hash_String]["Open"] := Module[
  {
    location = RubiNotebookReference[hash]["Resolve"],
    file, cell, nb
  },
  If[Head[location] =!= List,
    Message[RubiNotebookReference::missing, hash];
    Return[$Failed]
  ];
  {file, cell} = {"File", "Cell"} /. location;
  nb = locateRubiNotebook[file];
  If[Head[nb]===String && FileExistsQ[nb],
    navigateRubiNotebook[nb, cell],
    Message[RubiNotebookReference::notFound, file];
    Return[$Failed]
  ]
];

locateRubiNotebook::ambig = "More than one notebook file for `` was found. Returning the first one.";
locateRubiNotebook[file_String] := Module[
  {
    files = FileNames[file <> ".nb", {FileNameJoin[{$UserBaseDirectory, "ApplicationData", "IntegrationRuleNotebooks"}]}, Infinity]
  },
  Switch[Length[files],
    0, $Failed,
    1, First[files],
    _, Message[locateRubiNotebook::ambig, file]; First[files]
  ]
];

navigateRubiNotebook[file_String /; FileExistsQ[file], cell_Integer] := Module[
  {
    nbObject,
    target
  },
  nbObject = NotebookOpen[file, Saveable -> False];
  target = Cells[nbObject, CellStyle -> "Code"];
  If[Length[target] >= cell,
    target = target[[cell]];
    SelectionMove[target, All, CellGroup];
    FrontEndExecute[FrontEndToken[nbObject, "SelectionOpenAllGroups"]];
    SelectionMove[target, All, Cell];
  ]
];
