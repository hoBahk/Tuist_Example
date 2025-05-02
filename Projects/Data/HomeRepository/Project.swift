//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "HomeRepository",
    targets: [
        .target(
            name: "HomeRepository",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.HomeRepository",
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "HomeDomain", path: "../../Domain/HomeDomain"),
                .project(target: "NetworkCore", path: "../../Core/NetworkCore")
            ]
        ),
        .target(
            name: "HomeRepositoryTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.HomeRepositoryTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "HomeRepository")
            ]
        )
    ]
)
