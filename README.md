# Rubi - Rule-based Integration

Rubi is a rule-based symbolic integrator implemented in Mathematica.
It was developed as an independent research project by Albert D. Rich to demonstrate the numerous advantages of using a rule-based decison tree to automate mathematics.
In just a few short weeks, Patrick Scheibe transfromed Rubi into a GitHub project, significantly enhanced the user-interface, and made the system available as a Mathematica paclet.

Rubi consists of a large number of transformation rules that allows users to determine the antiderivative of an expression by 
applying matching integration rules step-by-step until the final solution is found.
In principle, Rubi is independent of the implementation, because the integration rules could theoretically be used in any
sufficiently advanced language that supports symbolic pattern-matching and replacement rules.

Rubi out-performs Maple and Mathematica (the two major commercial computer algebra systems) on a grueling integration test suite,
consisting of over 70 thousand integrands and their optimal antiderivatives.  Independently conducted test results are available at [Computer Algebra Independent Integration Tests](https://www.12000.org/my_notes/CAS_integration_tests/index.htm).

Another major advantage of Rubi is that it provides the option to show each integration step the system uses to determine an antiderivative.
Since Rubi uses a decision tree to select the appropriate rule to apply to a given integrand, the transformation formula and the required application conditions can be provided for each step of the integration.

## Documentation

The main documentation of the Rubi package will be available in the [Rubi GitHub Wiki](https://github.com/RuleBasedIntegration/Rubi/wiki).
Since the Wiki is at the moment not complete, please visit the [current Rubi website](http://www.apmaths.uwo.ca/~arich/).
In future, all documentation, PDF files of the rules, and the test-suite will be available through the 
[Rule-based Integration Organisation](https://github.com/RuleBasedIntegration) on GitHub.

## Installation

In Mathematica 11.2 or later, you can install the package directly from the online repository

```mma
PacletInstall["https://github.com/RuleBasedIntegration/Rubi/releases/download/4.16/Rubi-4.16.paclet"]
```
In earlier version of Mathematica, you can download the latest version of Rubi from the [releases section](https://github.com/RuleBasedIntegration/Rubi/releases) as
a *paclet* file. To install the paclet use

```mma
PacletInstall["path/to/Rubi-x.xx.paclet"]
```

Another way is to download the complete repository by using the green *Clone or download* button and extract the zip
to a place of your choice. The Rubi repository is much larger than the paclet since it contains all Rubi notebooks
with the integration rules (that are definitely worth a look!).

With the complete repository downloaded, you can use Rubi by loading it directly from the folder

```mma
Get["path/to/Rubi/Rubi.m"]
```

or you place the inner `Rubi` folder with all its content into the following directory

```mma
FileNameJoin[{$UserBaseDirectory, "Applications"}]
```

After that, you can load it like any other normal package.

## Usage

Rubi has 2 global settings that need to be set *before* you load the package if you want to use these features

```mma
$LoadShowSteps = True;
$LoadElementaryFunctionRules = True;
```

1. `$LoadShowSteps` needs to be `True` if you want to see the list of integration rules that Rubi uses to compute an
antiderivative.
2. `$LoadElementaryFunctionRules` needs to by `True` if you want to solve integrals that contain sine, tangents, exponentials, etc.

Both settings increase the loading time of the package at the moment, but this might change in future.

### Basic integration

Rubi provides the command `Int[expr, x]` that computes the antiderivative of `expr` with respect to `x`

```mma
Int[Sqrt[x]*x, x]
(*  (2 x^(5/2))/5 *)
```

Rubi can also directly compute a definite integral by taking the limit at the bounds and calculating the difference. However,
this is not always correct, e.g. when the antiderivative is not continuous between the bounds. 

```mma
Int[Sqrt[x]*x, {x, 1, 10}]
(* -(2/5) + 40 Sqrt[10] *)
```

The expression to integrate can also be a list of expressions and then, each antiderivative is computed

```mma
Int[{x, x^2}, x]
(* {x^2/2, x^3/3} *)
```

### Inspecting integration steps

Using `Steps` or `Step`, Rubi can show the list of integration rules and intermediate expressions.
To use this feature, Rubi must be loaded **after** setting `$LoadShowSteps = True`.

```mma
Steps[Int[(a + b*Sqrt[x])^d, x]]
```

![steps](http://i.imgur.com/jC1BTJs.png)

The boxes on the right with red text are the integration rules and the boxes with blue text are intermediate results.
Rules can be opened by clicking on the triangle-opener and then the internal rule-number and more importantly the
required conditions for this step are shown

![condition](http://i.imgur.com/W5l0aRF.png)

Furthermore, you can click on the blue intermediate results and they are copied to the clipboard if you need them as
Mathematica input. The "Copy Steps" button at the bottom let's you copy the complete list of steps as raw Mathematica
expressions like they are collected by Rubi.

The `Step` function works similarly but only shows the first step of the integration.

### Integration statistics

Rubi maintains a notion of how complex the computation of the antiderivative is. It is using the number of rules
that were required and the sizes of the input and output expressions. 

```mma
Stats[Int[(a + b*Sqrt[x])^d, x]]
```

![Stats](http://i.stack.imgur.com/c4aUZ.png)


## Repository structure and development

### General

1. The Rubi repository includes all notebooks containing the Rubi rules under the `IntegrationRuleNotebooks` directory.
This directory contains many sub-folders which reflect the separation of rules into logical sections (like rules for
algebraic functions or rules for exponentials). The advantage of the notebooks is that they contain detailed information
about integration rules like references to the literature and further information
2. The `Rubi` folder contains the Mathematica package and wrapper code that (1) provides required utility functions (2)
loads the integration rules in the correct order (3) provides features to show formatted integration steps and integration
statistics. This folder contains all Rubi rules from the notebook that were automatically extracted into densely packed
package files under the `Rubi/IntegrationRules` folder. These `.m` files are not meant to be edited or looked at!

To extract the rules from the notebooks, we provide a helper package `RubiPackageTools.m` that can be used in the following
way from within Mathematica

```mma
<< "/path/to/Rubi/RubiPackageTools.m"
BuildIntegrationRules[]
```

This will extract all rules from the notebooks, zip appropriate sections together in one `.m` file and place it to the
correct location under `Rubi/IntegrationRules`. The created package files are loaded from within `Rubi.m` with the
`LoadRules[]` functions. Again, the order in which the rules are loaded in `Rubi.m` is vitally important to get a 
working Rubi package.

### How showing integration steps works

The file `Rubi/ShowStepRoutines.m` contains most of the functionality to provide step-by-step integration.
It works by changing all Rubi rules for `Int` so that they

1. Stop at each step
2. Provide important information about the current step

In it's core, it works by injecting code that employs `Hold` to stop evaluation.
Here is a simple example how this can be done

```mma
sum[0] = 0;
sum[n_] := n + sum[n - 1];

changeRule[HoldPattern[rhs_ :> lhs_]] := rhs :> HoldForm[lhs];
DownValues[sum] = changeRule /@ DownValues[sum];
```

Now we have to restart the evaluation in each recursive call to `sum`, but we can print out intermediate steps easily

```mma
FixedPoint[(Print[#]; ReleaseHold[#]) &, sum[4]]
```

Rubi's `Steps`, `Step` and `Stats` functions work similarly, but instead of directly printing the information, they
are collected with `Sow` and `Reap` and later formatted and printed.

The main content of the `ShowStepRoutines.m` is code to turn the `Int` rules into a readable form.

### Formatted output

When using `Steps[Int[expr, x]]` (or `Step`), Rubi collects a list of steps where each element is either `RubiRule[..]`
or `RubiIntermediateResult[..]`. The `Stats` function collects its information inside `RubiStats[..]`.
Formatting of these expressions is completely handled inside `Rubi/ShowStepFormatting.m`.
This file contains definitions how to format a single e.g. `RubiRule` expression and the final representation is built
in the function `PrintRubiSteps[..]`. 

The representation of the statistics is directly attached to the `Stats` symbol in its `FormatValues`. At the moment
it uses Mathematica's built-in ``BoxForm`ArrangeSummaryBox[..]`` that is also used for e.g. `CompiledFunction`,
`InterpolatingFunction`, etc.






