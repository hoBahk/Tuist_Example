//
//  Project.swift
//  Mainfests
//
//  Created by hoBahk on 2025/04/24.
//
import ProjectDescription

let project = Project(
    name: "ThirdParty",
    targets: [
        .target(
            name: "ThirdParty",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.example.ThirdParty",
            sources: ["Sources/**"],
            dependencies: []
        ),
        .target(
            name: "ThirdPartyTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.example.ThirdPartyTests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "ThirdParty")
            ]
        )
    ]
)
