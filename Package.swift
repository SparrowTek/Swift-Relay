// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Relay",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Compute", .upToNextMajor(from: "2.12.0")),
        .package(url: "https://github.com/swift-cloud/MongoDB", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .executableTarget(
            name: "Relay",
            dependencies: [
                "Compute",
                "MongoDB",
            ]),
        .testTarget(
            name: "RelayTests",
            dependencies: ["Relay"]),
    ]
)
