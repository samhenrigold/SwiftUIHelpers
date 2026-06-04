// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIHelpers",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9),
        .visionOS(.v1)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftUIHelpers",
            targets: ["SwiftUIHelpers"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUIHelpers",
            dependencies: [],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "SwiftUIHelpersTests",
            dependencies: ["SwiftUIHelpers"]
        ),
    ]
)
