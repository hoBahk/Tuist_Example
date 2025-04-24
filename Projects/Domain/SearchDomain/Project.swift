//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "SearchDomain",
    targets: [
        .target(
            name: "SearchDomain",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.SearchDomain",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "SearchDomainTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.SearchDomainTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "SearchDomain")
            ]
        )
    ]
)
