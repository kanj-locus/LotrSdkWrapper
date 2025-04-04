// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LotrSdkWrapper",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LotrSdkWrapper",
            targets: ["LotrSdkWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", exact: "5.9.0"),
        .package(url: "https://github.com/Moya/Moya", exact: "15.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift", exact: "6.9.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxCoreLocation", exact: "1.5.1"),
        .package(url: "https://github.com/realm/realm-swift", exact: "10.54.3"),
        .package(url: "https://github.com/RxSwiftCommunity/RxRealm", exact: "5.0.7"),
        .package(name: "LotrSdk", url: "git@github.com:kanj-locus/lotr-sdk-swift-package-test.git", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LotrSdkWrapper",
            dependencies: [
                "LotrSdk", "Alamofire", "Moya", "RxCoreLocation", "RxRealm", "RxSwift",
                .product(name: "Realm", package: "RealmSwift"),
                .product(name: "RealmSwift", package: "RealmSwift"),
            ]
        ),
    ]
)
