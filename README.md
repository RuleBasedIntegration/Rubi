# Rubi - Rule-based Integration

This is a Mathematica implementation of the rule-based integrator called Rubi developed by Albert D. Rich.
Rubi is a large set of transformation rules that allows to determine the antiderivative of an expression by 
applying matching integration rules step by step until the final solution is found.
In principle, Rubi is independent of the implementation, because the integration rules could theoretically be used in any
sufficiently advanced language that supports symbolic pattern-matching and replacement rules.

Rubi out-performs Maple and Mathematica (the two major commercial computer algebra systems) on a grueling integration test suite,
consisting of over 70 thousand integrands and optimal antiderivatives.
One major advantage of Rubi is that it can provide the exact steps that are required to determine an antiderivative.
Since Rubi rules follow a decision tree, the transformation and the required conditions can be provided for each
integration step.

## Documentation

The main documentation of the Rubi project can be found under [rulebasedintegration.org](https://rulebasedintegration.org).
Certain development specific information about this Mathematica package will be made available in the [Rubi GitHub Wiki](https://github.com/RuleBasedIntegration/Rubi/wiki).
Since the Wiki is at the moment not complete, please visit the [current Rubi website](http://www.apmaths.uwo.ca/~arich/).

For an installation- and usage-guide, please see the [Mathematica Package](https://rulebasedintegration.org/mathematicaPackage.html) section on [rulebasedintegration.org](https://rulebasedintegration.org).

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

This will extract all rules from the notebooks into `.m` files and place them into the
correct location under `Rubi/IntegrationRules`. The created package files are loaded from within `Rubi.m` with the
`LoadRules[]` functions. Again, the order in which the rules are loaded in `Rubi.m` is **vitally important** to get a 
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






