// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationAmazonAdMarketplaceAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppLovinMediationAmazonAdMarketplaceAdapter",
            targets: ["AppLovinMediationAmazonAdMarketplaceAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", exact: "5.7.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/amazonadmarketplace-adapter/AppLovinMediationAmazonAdMarketplaceAdapter-5.7.0.0.zip",
            checksum: "757f017ce17be10459eb2f98b51505a0225ee714acb3985e1e1d620184d8ca2e"
        )
    ]
)
