// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxFirebase",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RxFirebase",
            targets: ["RxFirebase"]
        ),
    ],
    dependencies: [
        .package(
            name: "Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            from: "11.5.0"
        ),
        .package(
            url: "https://github.com/ReactiveX/RxSwift.git",
            from: "6.0.0"
        )
    ],
    targets: [
        .target(
            name: "RxFirebase",
            dependencies: [
                .product(
                    name: "FirebaseAuth",
                    package: "Firebase"
                ),
                .product(
                    name: "FirebaseDatabase",
                    package: "Firebase"
                ),
                .product(
                    name: "FirebaseFirestore",
                    package: "Firebase"
                ),
                .product(
                    name: "FirebaseFunctions",
                    package: "Firebase"
                ),
                .product(
                    name: "FirebaseRemoteConfig",
                    package: "Firebase"
                ),
                .product(
                    name: "FirebaseStorage",
                    package: "Firebase"
                ),
                .product(
                    name: "RxSwift",
                    package: "RxSwift"
                ),
                .product(
                    name: "RxCocoa",
                    package: "RxSwift"
                )
            ],
            path: "Sources",
            exclude: ["Core"]
        ),
        .testTarget(
            name: "RxFirebaseTests",
            dependencies: ["RxFirebase"],
            path: "Tests/RxFirebaseSwiftTests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
