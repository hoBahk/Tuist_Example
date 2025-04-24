import ProjectDescription

let tuist = Tuist(fullHandle: "qudgh849/Tuist_Example", project: .tuist())

let config = Config(
  compatibleXcodeVersions: .all, // 또는 .list(["15.3"])
  plugins: [
    .git(url: "https://github.com/tuist/tuist-plugin-lint", tag: "0.3.0")
  ]
)
