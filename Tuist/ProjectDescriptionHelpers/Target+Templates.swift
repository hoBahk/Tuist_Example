//
//  Target+Templates.swift
//  ProjectDescriptionHelpers
//
//  Created by 박병호 on 5/2/25.
//

// Target+Templates.swift
import ProjectDescription

public extension Target {
    static func makeTarget(
        name: String,
        product: Product,
        sources: SourceFilesList = ["Sources/**"],
        hasResources: Bool = false,
        dependencies: [TargetDependency] = []
    ) -> Target {
        target(
            name: name,
            destinations: .iOS,
            product: product,
            bundleId: "com.example.\(name)",
            infoPlist: .default,
            sources: sources,
            resources: hasResources ? ["Resources/**",] : [],
            dependencies: dependencies
        )
    }
}
