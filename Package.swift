// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Freddy",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "Freddy",
            targets: ["Freddy"]
        )
    ],
    targets: [
        // Mesmos fontes do podspec (`Sources/**/*.{h,swift}`); o umbrella header Obj-C
        // e o Info.plist do framework do Xcode não entram no target SPM.
        .target(
            name: "Freddy",
            path: "Sources",
            exclude: [
                "Freddy.h",
                "Info.plist"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
