// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "ZLogger",
    products: [
        .library(
            name: "ZLogger",
            targets: ["ZLogger"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ZLogger",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "ZLoggerTests",
            dependencies: ["ZLogger"],
            path: "Tests"
        ),
    ]
)
