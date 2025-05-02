import ProjectDescription

let project = Project(
    name: "App",
    settings: .settings(
        defaultSettings: .recommended
    ),
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "com.example.tuist-example",
            infoPlist: .extendingDefault(with: [
                "UILaunchStoryboardName": "LaunchScreen",
                "NSAppTransportSecurity": [
                    "NSAllowsArbitraryLoads": true
                ]
            ]),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "HomeFeature", path: "../Feature/HomeFeature"),
                .project(target: "HomeRepository", path: "../Data/HomeRepository"),
            ],
            settings: .settings(
                base: [
                    "CODE_SIGN_STYLE": "Automatic",            // 자동 코드 서명
//                    "DEVELOPMENT_TEAM": "W5GCLT5U2J",        // Team ID 설정
//                    "CODE_SIGN_IDENTITY": "Apple Development"  // 인증서 타입 (선택 사항)
                ],
                defaultSettings: .recommended
            )
        ),
        .target(
            name: "AppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.tuist-exampleTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "App")
            ]
        )
    ],
    schemes: [
        .scheme(
            name: "App",
            shared: true,
            buildAction: .buildAction(targets: ["App"]),
            testAction: TestAction.targets([]),
            runAction: .runAction(configuration: .debug),
            archiveAction: .archiveAction(configuration: .release)
        )
    ]
)

