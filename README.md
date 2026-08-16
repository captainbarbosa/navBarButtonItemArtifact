# Navigation Bar Platter Reproduction

A minimal UIKit project that demonstrates an iOS 26 navigation-bar transition artifact.

## Requirements

- Xcode 26
- An iOS 26 simulator or device

## Reproduction

1. Run the `NavigationBarPlatterRepro` scheme.
2. Open **Items**.
3. Select **Open detail**.

The `main` branch installs two destination navigation buttons before the animated push and reproduces the artifact.

The `view-did-appear-workaround` branch installs the same buttons in `viewDidAppear`, after the transition completes, and does not reproduce it.
