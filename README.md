# SwiftUIStarterKit

<p>
    <img src="https://img.shields.io/badge/Swift-5.1-F06C33.svg" />
    <img src="https://img.shields.io/badge/iOS-13.0+-865EFC.svg" />
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <a href="https://twitter.com/cypher_poet">
        <img src="https://img.shields.io/badge/Contact-@cypher_poet-lightgrey.svg?style=flat" alt="Twitter: @cypher_poet" />
    </a>
</p>

_A collection of personal utilities that I use for building SwiftUI applications._



## Installation

### Xcode Projects

Select `File` -> `Swift Packages` -> `Add Package Dependency` and enter `https://github.com/CypherPoet/SwiftUIStarterKit`.


### Swift Package Manager Projects

You can add `SwiftUIStarterKit` as a dependency in your `Package.swift` file:

```swift
let package = Package(
    //...
    dependencies: [
        .package(url: "https://github.com/CypherPoet/SwiftUIStarterKit", from: "0.0.49"),
    ],
    //...
)
```

Then simply `import SwiftUIStarterKit` wherever you’d like to use it.


## ⚠️ Disclaimer

Currently, this project is mainly for personal use, and, as the commit history shows, is subject to fast and loose changes.

Nonetheless, several people have asked me to open-source it so they can use it as inspiration or as a starting point for their own utilities. That would be my recommended approach &mdash; though if you really want to be edgy and attempt direct usage, please at least pin it to an exact release tag, like so:

```swift
let package = Package(
    //...
    dependencies: [
        .package(url: "https://github.com/CypherPoet/SwiftUIStarterKit", .exact("0.0.49")),
    ],
    //...
)
```
