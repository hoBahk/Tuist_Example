//
//  Untitled.swift
//  Manifests
//
//  Created by 박병호 on 4/18/25.
//

import ProjectDescription

let template = Template(
    description: "Module template with Project.swift and Sources",
    attributes: [
        .required("name"),
        .required("author"),
        .required("date")
    ],
    items: [
        .file(
            path: "{{ name }}/Project.swift",
            templatePath: "Project.stencil"
        ),
        .file(
            path: "{{ name }}/Sources/{{ name }}.swift",
            templatePath: "Module.stencil"
        ),
        .file(
            path: "{{ name }}/Tests/{{ name }}Tests.swift",
            templatePath: "ModuleTests.stencil"
        ),
    ]
)
