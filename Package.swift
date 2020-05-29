// swift-tools-version:5.2

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
