// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "About",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ProxyServer",
            targets: ["ProxyServer"]),
        .library(
            name: "PacketForwardHandler",
            targets: ["PacketForwardHandler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio", exact: "2.63.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ProxyServer",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
                .product(name: "NIOHTTP1", package: "swift-nio"),
            ]),
        .target(
            name: "PacketForwardHandler"),
        .testTarget(
            name: "ProxyServerTests",
            dependencies: ["ProxyServer"]),
    ]
)
