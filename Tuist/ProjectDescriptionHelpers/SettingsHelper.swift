import ProjectDescription

public enum SettingsHelper {
    public static let baseSettings: SettingsDictionary = [
        "SWIFT_VERSION": "4.2",
        "IPHONEOS_DEPLOYMENT_TARGET": "15.0"
    ]

    public static func projectSettings() -> Settings {
        return .settings(
            base: baseSettings,
            defaultSettings: .recommended
        )
    }
}
