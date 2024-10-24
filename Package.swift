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
            targets: ["SDKTest"]),
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
//            dependencies: []
//        ),
        .binaryTarget(
            name: "SDKTest",
//            path: "./SDKTest.xcframework"
            url: "https://github.com/xuxuezhe/soomirang-library/releases/download/v1.0.1/SDKTest.xcframework.zip",
            checksum: "a5487171afa63bae73d4539c2c8640cf2706258e15617ee2304129ec54c90de8"
        ),
    ]
)
