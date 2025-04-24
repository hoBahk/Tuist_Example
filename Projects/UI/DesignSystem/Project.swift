//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "DesignSystem",
    targets: [
        .target(
            name: "DesignSystem",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.DesignSystem",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "DesignSystemTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.DesignSystemTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "DesignSystem")
            ]
        )
    ]
)
