// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Helloworld",
    platforms: [
        .macOS(.v10_13),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from:"0.2.0")),
    ],
    targets: [
        .target(
            name: "Helloworld",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-runtime"),
        ]),
        .testTarget(
            name: "HelloworldTests",
            dependencies: ["Helloworld"]),
    ]
)
