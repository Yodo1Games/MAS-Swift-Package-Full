# Yodo1 MAS iOS SDK

Yodo1 MAS (Managed Ad Services) iOS SDK for Swift Package Manager.

## Requirements

| Requirement | Value |
|-------------|-------|
| iOS | 15.0+ |
| Swift tools | 5.6+ |
| Xcode (tested with) | 26.1.1 |

## Installation

To integrate the Yodo1 MAS SDK into your project using Swift Package Manager:

### 1. Add the package

#### Xcode

1. **File → Add Package Dependencies…**
2. Enter the repository URL:

   ```
   https://github.com/Yodo1Games/MAS-Swift-Package-Full.git
   ```

3. Choose a dependency rule: an exact version you pick from this repository's tags (every Yodo1 MAS package in a project must pin the same one).
4. Add `Yodo1MasFull` to your target when prompted, then click **Add Package**.

#### Package.swift

```swift
dependencies: [
    .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Full.git", exact: "<version>")
]
```

> Replace `<version>` with a tag from this repository (listed under **Tags**
> or **Releases**). Prerelease tags carry a `-beta.N` suffix, where `N` is
> the prerelease number.

Then add `Yodo1MasFull` to your target:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "Yodo1MasFull", package: "MAS-Swift-Package-Full"),
    ]
)
```

### 2. Add the `-ObjC` linker flag (required)

The SDK ships as **static** frameworks, so your app must link with `-ObjC`.
This is **required**: without it the linker drops the SDK's mediation adapters
and Objective-C categories, and ads silently fail to load.

In Xcode, go to **Build Settings**, search for **Other Linker Flags**, and add
`-ObjC` (equivalently, set `OTHER_LDFLAGS = $(inherited) -ObjC` in an
`.xcconfig`).

Check out our [iOS integration guide](https://developers.yodo1.com/docs/sdk/guides/ios/integration)
for more info on getting started with the Yodo1 MAS SDK.

## Products

`Yodo1MasFull` is a single product that bundles the standard set of networks and
their adapters, so most integrations only need this one product.

Each network package depends on the same `MAS-Swift-Package-Core` and the
packages pin each other exactly, so mixing `Yodo1MasFull` with individual network
packages stays on one shared set of third-party SDKs at a single version.

### Network packages

`Yodo1MasFull` does **not** include every network. Every other network with a
Swift package is published in its own repository
(`https://github.com/Yodo1Games/<repository>`); add its product to your target
as well.

| Network | Package repository |
|---------|--------------------|
| AppLovin | `MAS-Swift-Package-AppLovin` |
| Aurion11 | `MAS-Swift-Package-Aurion11` |
| BidMachine | `MAS-Swift-Package-BidMachine` |
| Bigo Ads | `MAS-Swift-Package-Bigo` |
| DT Exchange (Fyber) | `MAS-Swift-Package-Fyber` |
| Google AdMob | `MAS-Swift-Package-AdMob` |
| InMobi | `MAS-Swift-Package-InMobi` |
| Liftoff Monetize (Vungle) | `MAS-Swift-Package-Vungle` |
| Meta Audience Network (Facebook) | `MAS-Swift-Package-Facebook` |
| Mintegral | `MAS-Swift-Package-Mintegral` |
| Moloco | `MAS-Swift-Package-Moloco` |
| Pangle | `MAS-Swift-Package-Pangle` |
| Unity Ads | `MAS-Swift-Package-UnityAds` |
| Yandex | `MAS-Swift-Package-Yandex` |
| Yodo1 | `MAS-Swift-Package-Yodo1` |
| YSO Network | `MAS-Swift-Package-Yso` |

CSJ, Tencent and ToBid are distributed through CocoaPods only and have no Swift Package Manager product.

## License

Copyright (c) 2020-2026 Yodo1 Games. See [LICENSE](LICENSE).
