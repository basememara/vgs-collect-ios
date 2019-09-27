// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "VGSFramework",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(name: "VGSFramework", targets: ["VGSFramework"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.2")
    ],
    targets: [
        .target(
            name: "VGSFramework",
            dependencies: ["SnapKit", "Alamofire"],
            path: "framework"
        ),
//        .testTarget(
//            name: "FrameworkTests",
//            dependencies: ["VGSFramework"],
//            path: "framework"
//        ),
    ]
)
