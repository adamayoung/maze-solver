// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MazeSolver",

    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .watchOS(.v9),
        .tvOS(.v16),
        .visionOS(.v1)
    ],

    products: [
        .library(name: "MazeSolver", targets: ["MazeSolver"])
    ],

    targets: [
        .target(
            name: "MazeSolver"
        ),
        .testTarget(
            name: "MazeSolverTests",
            dependencies: ["MazeSolver"],
            resources: [.process("Resources")]
        )
    ]
)
