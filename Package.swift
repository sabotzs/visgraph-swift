// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "visgraph-swift",
    dependencies: [
        .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", exact: .init(stringLiteral: "0.36.0")),
    ],
    targets: [
        .executableTarget(
            name: "visgraph-swift",
            dependencies: [
                .product(name: "JavaScriptKit", package: "JavaScriptKit"),
            ]
        ),
    ]
)
