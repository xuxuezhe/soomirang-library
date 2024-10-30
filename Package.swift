// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SoomirangSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // SDK를 라이브러리로 정의
        .library(
            name: "SoomirangSDK",
            targets: ["MySDK"]),
    ],
    dependencies: [
        // 여기에 외부 의존성이 있으면 추가합니다.
//        .package(url: "https://github.com/xuxuezhe/soomirang-library.git", exact: "1.0.0")
//        .package(url: "https://github.com/xuxuezhe/soomirang-library.git", from: "1.0.0")
//        .package(url: "https://github.com/xuxuezhe/soomirang-library.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
//        // SDK 코드가 포함된 타겟
//        .target(
//            name: "SoomirangSDK",
//            dependencies: []),
//        // 테스트 코드가 포함된 타겟
//        .testTarget(
//            name: "SoomirangSDKTests",
//            dependencies: ["SoomirangSDK"]),
        // 소스 코드 타겟
//        .target(
//            name: "SoomirangSDK",
//            dependencies: []·
//        ),
        .binaryTarget(
            name: "MySDK",
//            path: "./MyFramework.xcframework"
            url: "https://github.com/xuxuezhe/soomirang-library/releases/download/v1.0.5/MySDK.xcframework.zip",
            checksum: "4c3a6362230fb0e4ebcfb9c0d55c365e0a37aab70522b1823e257872351fc414"
        ),
    ]
)
