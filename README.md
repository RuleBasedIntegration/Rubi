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
integration step

## Installation

## Usage

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

The file `Rubi/ShowStepRoutines.m` 

### Formatted output






