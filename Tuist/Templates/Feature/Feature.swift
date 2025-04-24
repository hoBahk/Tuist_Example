import ProjectDescription

let featureTemplate = Template(
    description: "Feature template with Project.swift and Sources",
    attributes: [
        .required("name"),
        .required("author"),
        .required("date")
    ],
    items: [
        .file(
            path: "{{ name }}Feature/Project.swift",
            templatePath: "Project.stencil"
        ),
        .file(
            path: "{{ name }}Feature/Sources/{{ name }}/{{ name }}View.swift",
            templatePath: "View.stencil"
        ),
        .file(
            path: "{{ name }}Feature/Sources/{{ name }}/{{ name }}ViewModel.swift",
            templatePath: "ViewModel.stencil"
        ),
        .file(
            path: "{{ name }}Feature/Sources/{{ name }}Coordinator.swift",
            templatePath: "Coordinator.stencil"
        ),
        .file(
            path: "{{ name }}Feature/Tests/{{ name }}Tests.swift",
            templatePath: "Tests.stencil"
        ),
    ]
)

