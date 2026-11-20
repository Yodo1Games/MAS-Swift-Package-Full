// swift-tools-version: 5.6
// Copyright © 2026 Yodo1 Games. All rights reserved.

import PackageDescription

let package = Package(
    name: "Yodo1MasFull",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Yodo1MasFull", targets: ["Yodo1MasFullTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-AdMob.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-AppLovin.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Aurion11.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-BidMachine.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Bigo.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Core.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Facebook.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Fyber.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-InMobi.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Mintegral.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Moloco.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Pangle.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-UnityAds.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Vungle.git", exact: "5.0.0-beta.5"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Yodo1.git", exact: "5.0.0-beta.5"),
    ],
    targets: [
        // ==================== Yodo1MasFull (bundle) ====================
        .target(
            name: "Yodo1MasFullTarget",
            dependencies: [
                .target(name: "Yodo1MasFull"),
                .product(name: "Yodo1MasCore", package: "MAS-Swift-Package-Core"),
                .product(name: "Yodo1MasMediationAdMob", package: "MAS-Swift-Package-AdMob"),
                .product(name: "Yodo1MasMediationAdMob-AppLovinMediationGoogleAdapter", package: "MAS-Swift-Package-AdMob"),
                .product(name: "Yodo1MasMediationAdMob-AppLovinMediationGoogleAdManagerAdapter", package: "MAS-Swift-Package-AdMob"),
                .product(name: "Yodo1MasMediationApplovin", package: "MAS-Swift-Package-AppLovin"),
                .product(name: "Yodo1MasMediationApplovin-AppLovinAdapter", package: "MAS-Swift-Package-AppLovin"),
                .product(name: "Yodo1MasMediationApplovin-A11MediationAppLovinMAXAdapter", package: "MAS-Swift-Package-AppLovin"),
                .product(name: "Yodo1MasMediationAurion11", package: "MAS-Swift-Package-Aurion11"),
                .product(name: "Yodo1MasMediationBidMachine", package: "MAS-Swift-Package-BidMachine"),
                .product(name: "Yodo1MasMediationBidMachine-AppLovinMediationBidMachineAdapter", package: "MAS-Swift-Package-BidMachine"),
                .product(name: "Yodo1MasMediationBidMachine-GoogleBidMachineAdapter", package: "MAS-Swift-Package-BidMachine"),
                .product(name: "Yodo1MasMediationBigo", package: "MAS-Swift-Package-Bigo"),
                .product(name: "Yodo1MasMediationBigo-AppLovinMediationBigoAdsAdapter", package: "MAS-Swift-Package-Bigo"),
                .product(name: "Yodo1MasMediationFacebook", package: "MAS-Swift-Package-Facebook"),
                .product(name: "Yodo1MasMediationFacebook-AppLovinMediationFacebookAdapter", package: "MAS-Swift-Package-Facebook"),
                .product(name: "Yodo1MasMediationFacebook-MetaAdapter", package: "MAS-Swift-Package-Facebook"),
                .product(name: "Yodo1MasMediationFyber", package: "MAS-Swift-Package-Fyber"),
                .product(name: "Yodo1MasMediationFyber-AppLovinMediationFyberAdapter", package: "MAS-Swift-Package-Fyber"),
                .product(name: "Yodo1MasMediationFyber-DTExchangeAdapter", package: "MAS-Swift-Package-Fyber"),
                .product(name: "Yodo1MasMediationInMobi", package: "MAS-Swift-Package-InMobi"),
                .product(name: "Yodo1MasMediationInMobi-AppLovinMediationInMobiAdapter", package: "MAS-Swift-Package-InMobi"),
                .product(name: "Yodo1MasMediationInMobi-InMobiAdapter", package: "MAS-Swift-Package-InMobi"),
                .product(name: "Yodo1MasMediationMintegral", package: "MAS-Swift-Package-Mintegral"),
                .product(name: "Yodo1MasMediationMintegral-AppLovinMediationMintegralAdapter", package: "MAS-Swift-Package-Mintegral"),
                .product(name: "Yodo1MasMediationMintegral-MintegralAdapter", package: "MAS-Swift-Package-Mintegral"),
                .product(name: "Yodo1MasMediationMoloco", package: "MAS-Swift-Package-Moloco"),
                .product(name: "Yodo1MasMediationMoloco-AppLovinMediationMolocoAdapter", package: "MAS-Swift-Package-Moloco"),
                .product(name: "Yodo1MasMediationMoloco-MolocoAdapter", package: "MAS-Swift-Package-Moloco"),
                .product(name: "Yodo1MasMediationPangle", package: "MAS-Swift-Package-Pangle"),
                .product(name: "Yodo1MasMediationPangle-AppLovinMediationByteDanceAdapter", package: "MAS-Swift-Package-Pangle"),
                .product(name: "Yodo1MasMediationPangle-PangleAdapter", package: "MAS-Swift-Package-Pangle"),
                .product(name: "Yodo1MasMediationUnityAds", package: "MAS-Swift-Package-UnityAds"),
                .product(name: "Yodo1MasMediationUnityAds-AppLovinMediationUnityAdsAdapter", package: "MAS-Swift-Package-UnityAds"),
                .product(name: "Yodo1MasMediationUnityAds-UnityAdapter", package: "MAS-Swift-Package-UnityAds"),
                .product(name: "Yodo1MasMediationVungle", package: "MAS-Swift-Package-Vungle"),
                .product(name: "Yodo1MasMediationVungle-AppLovinMediationVungleAdapter", package: "MAS-Swift-Package-Vungle"),
                .product(name: "Yodo1MasMediationVungle-LiftoffMonetizeAdapter", package: "MAS-Swift-Package-Vungle"),
                .product(name: "Yodo1MasMediationYodo1", package: "MAS-Swift-Package-Yodo1"),
            ],
            path: "Sources/Yodo1MasFullTarget",
            resources: [.copy("yodo1mas.plist")]
        ),
        .binaryTarget(
            name: "Yodo1MasFull",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasFull/Yodo1MasFull-5.0.0-beta.5.zip",
            checksum: "1753af28ef3b7b688e9c6f23924e0e676b36c12a860a1142e5aab98a57dc6d5b"
        ),
    ]
)
