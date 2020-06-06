// swift-tools-version:5.0
//
//  Package.swift
//

import PackageDescription

let package = Package(name: "DPOTPView",
                      platforms: [.iOS(.v9)],
                      products: [.library(name: "DPOTPView",
                                          targets: ["DPOTPView"])],
                      targets: [.target(name: "DPOTPView",
                                        path: "DPOTPView",
                                        publicHeadersPath: "")])
