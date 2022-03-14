// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "API",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "API", targets: ["API"])
    ],
    dependencies: [
        .package(url: "https://github.com/ishkawa/APIKit.git", .upToNextMajor(from: "5.1.0")),
    ],
    targets: [
        .target(
            name: "API",
            path: "Sources"
        ),
        .testTarget(
            name: "APITests",
            dependencies: ["API"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
