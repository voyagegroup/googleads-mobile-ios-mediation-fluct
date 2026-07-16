// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "GoogleMobileAdsFluctAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GoogleMobileAdsFluctAdapter",
            targets: ["GoogleMobileAdsFluctAdapter"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/voyagegroup/FluctSDK-iOS-Swift-Package.git",
            exact: "6.43.5"
        ),
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.0.0"
        ),
    ],
    targets: [
        .target(
            name: "GoogleMobileAdsFluctAdapter",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            publicHeadersPath: "include"
        ),
    ]
)
