# 4.16.0.4

- Improve loading time of the package. After the first loading of Rubi (takes up to one or more minutes), the complete
package is now stored in a binary format that allows to load Rubi in under a second
- Remove global `Int` definitions before loading Rubi to avoid shadow warning message

# 4.16.0.3

- Fix issue where the display of Steps does not work on Mathematica version 7/8

# 4.16.0.2

- Latest integration rules from Albert
- Fix that building the Mathematica page from the integration notebooks keeps semantics and verify it by running the test-suite