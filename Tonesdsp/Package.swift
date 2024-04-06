// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: Tonesdsp

import PackageDescription;

let package = Package(
    name: "Tonesdsp",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "Tonesdsp",
            targets: ["Tonesdsp"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", path: "./RustFramework.xcframework"),
        .target(
            name: "Tonesdsp",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)