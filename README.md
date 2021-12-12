# SwiftUI Starter Kit

<p>
    <img src="https://img.shields.io/badge/Swift-5.5-F06C33.svg" />
    <img src="https://img.shields.io/badge/iOS-15.0+-865EFC.svg" />
    <img src="https://img.shields.io/badge/iPadOS-15.0+-F65EFC.svg" />
    <img src="https://img.shields.io/badge/macOS-12.0+-179AC8.svg" />
    <img src="https://img.shields.io/badge/tvOS-15.0+-41465B.svg" />
    <img src="https://img.shields.io/badge/watchOS-8.0+-1FD67A.svg" />
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <img src="https://github.com/CypherPoet/SwiftUIStarterKit/workflows/Build%20&%20Test/badge.svg" />
    <a href="https://github.com/apple/swift-package-manager">
      <img src="https://img.shields.io/badge/spm-compatible-brightgreen.svg?style=flat" />
    </a>
    <a href="https://twitter.com/cypher_poet">
        <img src="https://img.shields.io/badge/Contact-@cypher_poet-lightgrey.svg?style=flat" alt="Twitter: @cypher_poet" />
    </a>
</p>

_A collection of miscellaneous &mdash; super-basic &mdash; utilities that I use for building SwiftUI applications._



# Installation

### Xcode Projects

Select `File` -> `Swift Packages` -> `Add Package Dependency` and enter `https://github.com/CypherPoet/SwiftUIStarterKit`.


### Swift Package Manager Projects

You can add this project as a package dependency in your `Package.swift` file:

```swift
let package = Package(
    //...
    dependencies: [
        .package(
            url: "https://github.com/CypherPoet/SwiftUIStarterKit",
            .exact("0.0.57")
        ),
    ],
    //...
)
```

From there, refer to the `SwiftUIStarterKit` "product" delivered by the `CypherPoetSwiftUIStarterKit` "package" inside of any of your project's target dependencies:

```swift
targets: [
    .target(
        name: "YourLibrary",
        dependencies: [
            .product(name: "SwiftUIStarterKit", package: "CypherPoetSwiftUIStarterKit"),
        ],
        ...
    ),
    ...
]
```

Then simply `import SwiftUIStarterKit` wherever you’d like to use it.

## ⚠️ Disclaimer

Currently, this project is mainly for personal use, and, as the commit history shows, is subject to fast and loose changes.

Nonetheless, several people have asked me to open-source it so they can use it as inspiration or as a starting point for their own utilities. That would be my recommended approach &mdash; though if you really want to be edgy and attempt direct usage, please at least pin it to an exact release tag, as shown in the installation instructions above.


## 💻 Developing

### Requirements

- Xcode 13.0+ (Recommended)


### 📜 Creating & Building Documentation

Documentation is built with [Xcode's DocC](https://developer.apple.com/documentation/docc). See [Apple's guidance on how to build, run, and create DocC content](https://developer.apple.com/documentation/docc/api-reference-syntax).

For now, the best way to view the docs is to open the project in Xcode and run the `Build Documentation` command. At some point in the future, I'm hoping to leverage the tooling the develops for generating/hosting DocC documentation. (Please feel free to let me know if you have any ideas or tooling recommendations around this 🙂).


## 🏷 License

`SwiftUIStarterKit` is available under the MIT license. See the [LICENSE file](./LICENSE) for more info.
