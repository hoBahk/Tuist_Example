//
//  Project.swift
//  SearchFeature
//
//  Created by hoBahk on 2025/04/24.
//

import ProjectDescription

let project = Project(
    name: "SearchFeature",
    targets: [
        .target(
            name: "SearchFeature",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.searchfeature",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "SearchDomain", path: "../../Domain/SearchDomain"),
                .project(target: "DesignSystem", path: "../../UI/DesignSystem"),
            ]
        ),
        .target(
            name: "SearchTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.searchFeatureTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "SearchFeature")
            ]
        )
    ]
)
