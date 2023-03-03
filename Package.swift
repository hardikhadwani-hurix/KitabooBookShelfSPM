// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KitabooBookShelfSPM",
    platforms: [.iOS("13.0")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KitabooBookShelfSPM",
            targets: ["KitabooBookShelfSPM"]),
    ],
    dependencies: [
         .package(url: "https://github.com/hardikhadwani-hurix/KitabooSDKWithReader", from: "1.0.2"),
         // Dependencies declare other packages that this package depends on.
         // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [ 
        .binaryTarget(name: "KitabooBookShelfFramework", url: "https://github.com/hardikhadwani-hurix/KitabooBookShelfSPM/releases/download/1.0.0/KitabooBookShelfFramework.xcframework.zip", checksum: "72ed0b7176d41365cf40f07edda1b82320e871378e08bb45375f9525ada03eab"),

        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "KitabooBookShelfSPM",
            dependencies: [ .product(name: "KitabooSDKWithReaderSPM", package: "KitabooSDKWithReader"),]),
        .testTarget(
            name: "KitabooBookShelfSPMTests",
            dependencies: ["KitabooBookShelfSPM"]),
    ]
)
