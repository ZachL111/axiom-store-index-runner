// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "axiom-store-index-runner",
    products: [.executable(name: "axiom-store-index-runner", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
