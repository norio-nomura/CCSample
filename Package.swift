import PackageDescription

let package = Package(
    name: "CCSample",
    targets: [
        Target(name: "CCSample", dependencies: ["CCommonCrypto"]),
        Target(name: "CCommonCrypto")
    ]
)
