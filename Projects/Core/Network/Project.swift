//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "Network",
    targets: [
        .target(
            name: "Network",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.Network",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "NetworkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.NetworkTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Network")
            ]
        )
    ]
)
