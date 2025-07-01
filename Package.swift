// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystemKit",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "DesignSystemKit",
            targets: ["DesignSystemKit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.13.0"
        )
    ],
    targets: [
        .target(
            name: "DesignSystemKit",
            resources: [
                .process("Assets")
            ]
        ),
        .testTarget(
            name: "DesignSystemKitTests",
            dependencies: ["DesignSystemKit",
                           .product(name: "SnapshotTesting", package: "swift-snapshot-testing")]
        ),
    ]
)
