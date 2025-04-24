import ProjectDescription

let project = Project(
    name: "App",
    settings: .settings(
        base: [
            "SWIFT_VERSION": "4.2",
        ],
        defaultSettings: .recommended
    ),
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.App",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["App/Sources/**"],
            resources: ["App/Resources/**"],
            dependencies: [
                
            ]
        ),
        .target(
            name: "Tuist_ExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.Tuist-ExampleTests",
            infoPlist: .default,
            sources: ["Tuist_Example/Tests/**"],
            resources: [],
            dependencies: [.target(name: "App")]
        )
    ],
    schemes: [
        .scheme(
            name: "App",
            shared: true,
            buildAction: .buildAction(targets: ["App"]),
            testAction: TestAction.targets(["Tuist_ExampleTests"]),
            runAction: .runAction(configuration: .debug),
            archiveAction: .archiveAction(configuration: .release)
        )
    ]
)
