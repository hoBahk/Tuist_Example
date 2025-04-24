//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "Logger",
    targets: [
        .target(
            name: "Logger",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.Logger",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "LoggerTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.LoggerTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Logger")
            ]
        )
    ]
)
