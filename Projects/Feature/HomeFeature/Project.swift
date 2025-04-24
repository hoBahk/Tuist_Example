//
//  Project.swift
//  HomeFeature
//
//  Created by hoBahk on 2025/04/24.
//

import ProjectDescription

let project = Project(
    name: "HomeFeature",
    targets: [
        .target(
            name: "HomeFeature",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.homefeature",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "HomeDomain", path: "../../Domain/HomeDomain"),
                .project(target: "DesignSystem", path: "../../UI/DesignSystem"),
            ]
        ),
        .target(
            name: "HomeTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.homeFeatureTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "HomeFeature")
            ]
        )
    ]
)
