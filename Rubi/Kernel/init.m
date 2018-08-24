(* Mathematica Init file    *)
(* Created by Mathematica Plugin for IntelliJ IDEA *)

Rubi`Private`$RubiVersionNumber = Version /. List @@ Get[FileNameJoin[{DirectoryName[System`Private`$InputFileName], "..", "PacletInfo.m"}]];

If[Not@ValueQ[Global`$LoadShowSteps],
  Rubi`Private`$LoadShowSteps = True,
  Rubi`Private`$LoadShowSteps = TrueQ[Global`$LoadShowSteps]
];

Rubi`Private`$MXFile = FileNameJoin[{
  DirectoryName[System`Private`$InputFileName],
  StringJoin[
    $SystemID,
    "-" <> ToString[$VersionNumber],
    "-Rubi-",
    Rubi`Private`$RubiVersionNumber,
    If[Rubi`Private`$LoadShowSteps,
      "-Steps.mx",
      ".mx"]
  ]
}];

Unprotect[Rubi`Private`Int];
ClearAll["Rubi`*"];
If[FileExistsQ[Rubi`Private`$MXFile] && Not[TrueQ[Rubi`$Debug]],
  Get[Rubi`Private`$MXFile],
  Get["Rubi`Rubi`"];
  DumpSave[Rubi`Private`$MXFile, "Rubi`"];
]
