# CypherPoetSwiftUIKit

<p>
    <img src="https://img.shields.io/badge/Swift-5.1-F06C33.svg" />
    <img src="https://img.shields.io/badge/iOS-13.0+-865EFC.svg" />
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
    <a href="https://twitter.com/cypher_poet">
        <img src="https://img.shields.io/badge/Contact-@cypher_poet-lightgrey.svg?style=flat" alt="Twitter: @cypher_poet" />
    </a>
</p>

_A collection of some personal utilities that I use for building SwiftUI applications._



## Installation

`CypherPoetSwiftUIKit` can be used through the Swift Package Manager. You can add it as a dependency in your `Package.swift` file:

```swift
let package = Package(
    //...
    dependencies: [
        .package(url: "https://github.com/CypherPoet/CypherPoetSwiftUIKit", .branch("master")),
    ],
    //...
)
```


## Usage

To access all libraries built by the project, simply `import CypherPoetSwiftUIKit` wherever you’d like to use it. Alternatively, you can choose to have your Xcode Project build the individual libraries provided by the project, and then import them like so:

```swift
import CypherPoetSwiftUIKit_ButtonStyles
import CypherPoetSwiftUIKit_DataFlowUtils
```


## ⚠️ Disclaimer

This project is mainly for personal use and experimentation, and, as the commit history shows, is subject to fast and loose changes. I'm also thinking that this package's libraries can be broken into standalone Swift packages, and might pursue that direction in the future.

Nonetheless, several people have asked me to open source the project so they can use it as inspiration or as a starting point for their own utilities. This would be my recommended approach, though if you really want to be edgy and attempt direct usage, please at least specify a specific release tag, like so:

```swift
let package = Package(
    //...
    dependencies: [
        .package(url: "https://github.com/CypherPoet/CypherPoetSwiftUIKit", .exact("0.0.42")),
    ],
    //...
)
```
