//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "SearchRepository",
    targets: [
        .target(
            name: "SearchRepository",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.SearchRepository",
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "SearchDomain", path: "../../Domain/SearchDomain")
            ]
        ),
        .target(
            name: "SearchRepositoryTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.SearchRepositoryTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "SearchRepository")
            ]
        )
    ]
)
