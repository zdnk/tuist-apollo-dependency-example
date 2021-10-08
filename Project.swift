import ProjectDescription

let baseSettings = SettingsDictionary()
    .bitcodeEnabled(true)

let project = Project(
    name: "TuistApollo",
    settings: .settings(base: baseSettings),
    targets: [
        // App
        .init(
            name: "App",
            platform: .iOS,
            product: .app,
            productName: "TuistApollo",
            bundleId: "com.TuistApollo.application",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
            infoPlist: .default,
            sources: [
                "Targets/TuistApollo/Sources/*.swift",
            ],
            dependencies: [
                .external(name: "Apollo"),
                .target(name: "API"),
            ]
        ),

        .init(
            name: "API",
            platform: .iOS,
            product: .framework,
            productName: "API",
            bundleId: "com.TuistApollo.api",
            deploymentTarget: .iOS(targetVersion: "14.0", devices: .iphone),
            infoPlist: .default,
            sources: [
                "Targets/TuistAPI/Sources/*.swift",
            ],
            dependencies: [
                .external(name: "Apollo"),
            ]
        ),

    ]
)
