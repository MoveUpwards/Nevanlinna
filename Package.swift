// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Nevanlinna",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "Nevanlinna",
            targets: ["Nevanlinna"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Nevanlinna",
            dependencies: [],
            path: "Nevanlinna/Sources"
        ),
        .testTarget(
            name: "NevanlinnaTests",
            dependencies: [
                .target(name: "Nevanlinna")
            ],
            path: "NevanlinnaTests")
    ]
)
