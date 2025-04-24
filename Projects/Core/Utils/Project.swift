//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "Utils",
    targets: [
        .target(
            name: "Utils",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.Utils",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "UtilsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.UtilsTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Utils")
            ]
        )
    ]
)
