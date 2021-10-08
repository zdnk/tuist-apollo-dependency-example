import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .remote(url: "https://github.com/apollographql/apollo-ios.git", requirement: .upToNextMajor(from: "0.43.0")),
    ],
    platforms: [.iOS]
)
