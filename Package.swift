// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KitabooBookShelfSPM",
    platforms: [.iOS("13.0")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KitabooBookShelfSPM",
            targets: ["KitabooBookShelfSPM","KitabooBookShelfFramework"]),
    ],
    dependencies: [
         .package(url: "https://github.com/hardikhadwani-hurix/KitabooSDKWithReader", from: "1.0.9"),
         // Dependencies declare other packages that this package depends on.
         // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [ 
        .binaryTarget(name: "KitabooBookShelfFramework", url: "https://github.com/hardikhadwani-hurix/KitabooBookShelfSPM/releases/download/1.0.12/KitabooBookShelfFramework.xcframework.zip", checksum: "99fcbef9701dd1ace068b9c67847d748d56c86eba9ef65630259a7fd1bf57c30"),

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

