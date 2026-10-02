// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationAmazonAdMarketplaceAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            targets: ["AppLovinMediationge-AmazonAdMarketplaceAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", exact: "5.6.6")
    ],
    targets: [
        .target(
            name: "AppLovinMediationAmazonAdMarketplaceAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationAmazonAdMarketplaceAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/amazonadmarketplace-adapter/AppLovinMediationAmazonAdMarketplaceAdapter-5.6.6.0.zip",
            checksum: "5025e242a34ee7cf774167091a81ef7bd6d63d6f1696a2eb165579560a68b47d"
        )
    ]
)
