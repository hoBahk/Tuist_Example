// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
//        productTypes: [
//            "Alamofire": .framework,
//            "Kingfisher": .framework
//        ]
    )
#endif

let package = Package(
    name: "Packagee",
    dependencies: [
//        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.10.2"),
//        .package(url: "https://github.com/onevcat/Kingfisher", from: "8.3.2"),
    ]
)
