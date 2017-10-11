// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "Stencil",
  products: [
    .library(name: "Stencil", targets: ["Stencil"]),
  ],
  dependencies: [
    .package(url: "https://github.com/PoissonBallon/PathKit.git", .branch("master")),
    .package(url: "https://github.com/kylef/Spectre.git", .upToNextMinor(from:"0.8.0"))
  ],
  targets: [
    .target(name: "Stencil", dependencies: ["PathKit"], path: "Sources"),
    .testTarget(name: "StencilTests", dependencies: ["Stencil", "Spectre"], path:"Tests/StencilTests")
  ],
  swiftLanguageVersions: [3]
)
