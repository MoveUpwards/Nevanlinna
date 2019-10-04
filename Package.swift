// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Nevanlinna",
    platforms: [
        .iOS(.v9),
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
            path: "Nevanlinna/Source"
        ),
    ]
)
