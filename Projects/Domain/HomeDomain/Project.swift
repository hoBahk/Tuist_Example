//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "HomeDomain",
    targets: [
        .target(
            name: "HomeDomain",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.HomeDomain",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "HomeDomainTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.HomeDomainTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "HomeDomain")
            ]
        )
    ]
)
