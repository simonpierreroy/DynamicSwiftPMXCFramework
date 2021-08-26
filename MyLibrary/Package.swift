// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MyLibrary",
            type: .dynamic,
            targets: ["MyLibrary"]),
    ],
    dependencies: [
        .package(
            name: "demo-issue-dep",
            url: "https://github.com/simonpierreroy/demo-issue-dep.git",
            .branch("master")
        ),
    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: [
                .product(name: "Stripe-wrapper", package: "demo-issue-dep"),
            ]),
    ]
)
