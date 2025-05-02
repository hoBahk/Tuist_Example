//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "NetworkCore",
    targets: [

        .makeTarget(
            name: "NetworkCore",
            product: .staticFramework,
            hasResources: false,
            dependencies: []
        ),
        .makeTarget(
            name: "NetworkCoreTests",
            product: .unitTests,
            sources: ["Tests/**"],
            hasResources: false,
            dependencies: [.target(name: "NetworkCore")]
        )
    ]
)
