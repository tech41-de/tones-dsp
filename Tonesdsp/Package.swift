// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: TonesDSP

import PackageDescription;

let package = Package(
    name: "TonesDSP",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "TonesDSP",
            targets: ["TonesDSP"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", path: "./RustFramework.xcframework"),
        .target(
            name: "TonesDSP",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)