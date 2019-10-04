// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Nevanlinna",
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
