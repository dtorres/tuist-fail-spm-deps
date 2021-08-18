import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [
            .package(url: "https://github.com/firebase/firebase-ios-sdk", .upToNextMajor(from: "8.0.0")),
        ],
        deploymentTargets: [.iOS(targetVersion: "12.0", devices: [.iphone, .ipad])]
    ),
    platforms: [.iOS]
)