// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationGoogleAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationGoogleAdapter",
            targets: ["AppLovinMediationGoogleAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.10.0")
    ],
    targets: [
        .target(
            name: "AppLovinMediationGoogleAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationGoogleAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationGoogleAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/google-adapter/AppLovinMediationGoogleAdapter-13.10.0.0.zip",
            checksum: "5025e242a34ee7cf774167091a81ef7bd6d63d6f1696a2eb165579560a68b47d"
        )
    ]
)
