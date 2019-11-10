// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CypherPoetSwiftUIKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "CypherPoetSwiftUIKit", targets: ["CypherPoetSwiftUIKit"]),
        .library(name: "CypherPoetSwiftUIKit.ButtonStyles", targets: ["CypherPoetSwiftUIKit.ButtonStyles"]),
        .library(name: "CypherPoetSwiftUIKit.DataFlowUtils", targets: ["CypherPoetSwiftUIKit.DataFlowUtils"]),
        .library(name: "CypherPoetSwiftUIKit.ImageUtils", targets: ["CypherPoetSwiftUIKit.ImageUtils"]),
        .library(name: "CypherPoetSwiftUIKit.PreviewUtils", targets: ["CypherPoetSwiftUIKit.PreviewUtils"]),
        .library(name: "CypherPoetSwiftUIKit.RefreshableScrollView", targets: ["CypherPoetSwiftUIKit.RefreshableScrollView"]),
        .library(name: "CypherPoetSwiftUIKit.ShapeUtils", targets: ["CypherPoetSwiftUIKit.ShapeUtils"]),
        .library(name: "CypherPoetSwiftUIKit.ViewModifiers", targets: ["CypherPoetSwiftUIKit.ViewModifiers"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CypherPoetSwiftUIKit",
            dependencies: [
                "CypherPoetSwiftUIKit.ButtonStyles",
                "CypherPoetSwiftUIKit.DataFlowUtils",
                "CypherPoetSwiftUIKit.ImageUtils",
                "CypherPoetSwiftUIKit.PreviewUtils",
                "CypherPoetSwiftUIKit.RefreshableScrollView",
                "CypherPoetSwiftUIKit.ShapeUtils",
                "CypherPoetSwiftUIKit.ViewModifiers",
            ]
        ),
        .target(
            name: "CypherPoetSwiftUIKit.ButtonStyles",
            dependencies: [],
            path: "Sources/Styles/Buttons"
        ),
        .target(
            name: "CypherPoetSwiftUIKit.DataFlowUtils",
            dependencies: [],
            path: "Sources/DataFlowUtils"
        ),
        .target(
            name: "CypherPoetSwiftUIKit.ImageUtils",
            dependencies: [],
            path: "Sources/ImageUtils"
        ),
        .target(
            name: "CypherPoetSwiftUIKit.PreviewUtils",
            dependencies: [],
            path: "Sources/PreviewUtils"
        ),
        .target(
            name: "CypherPoetSwiftUIKit.RefreshableScrollView",
            dependencies: [],
            path: "Sources/RefreshableScrollView"
        ),
        .target(
            name: "CypherPoetSwiftUIKit.ShapeUtils",
            dependencies: [],
            path: "Sources/ShapeUtils"
        ),
        .target(
            name: "CypherPoetSwiftUIKit.ViewModifiers",
            dependencies: [],
            path: "Sources/ViewModifiers"
        ),
    ]
)

