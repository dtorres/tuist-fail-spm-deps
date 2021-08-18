import ProjectDescription

let dummyTargets = [
            Target(
                name: "App",
                platform: .iOS,
                product: .app,
                bundleId: "io.tuist.app",
                infoPlist: .default,
                dependencies: [
                    .external(name: "FirebaseDatabase"),
                ]
            ),
            Target(
                name: "AppTests",
                platform: .iOS,
                product: .unitTests,
                bundleId: "io.tuist.appTests",
                infoPlist: .default,
                dependencies: [
                    .target(name: "App"),
                ]
            ),
        ]

let project = Project(
    name: "App",
    targets: dummyTargets,
    resourceSynthesizers: []
)