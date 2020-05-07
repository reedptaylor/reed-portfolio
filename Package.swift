// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MyWebsite",
    products: [
        .executable(name: "MyWebsite", targets: ["MyWebsite"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "MyWebsite",
            dependencies: ["Publish"]
        )
    ]
)