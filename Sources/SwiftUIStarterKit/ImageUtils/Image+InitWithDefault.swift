//
//  Image+InitWithDefault.swift
//  ViewExtensionsForBetterReusability
//
//  Created by CypherPoet on 10/16/19.
// ✌️
//

#if os(iOS)

import SwiftUI


extension Image {

    /// Tries to create an image with one asset name, the falls back to a default asset name.
    public init(assetName: String, defaultingToAssetName defaultAssetName: String) {
        if let image = UIImage(named: assetName) {
            self.init(uiImage: image)
        } else {
            self.init(defaultAssetName)
        }
    }


    /// Tries to create an image with one asset name, the falls back to a default _system_ name.
    public init(systemName: String, defaultingToSystemName defaultSystemName: String) {
        if let image = UIImage(systemName: systemName) {
            self.init(uiImage: image)
        } else {
            self.init(systemName: defaultSystemName)
        }
    }


    /// Tries to create an image with one asset name, the falls back to a default _asset_ name.
    public init(systemName: String, defaultingToAssetName defaultAssetName: String) {
        if let image = UIImage(systemName: systemName) {
            self.init(uiImage: image)
        } else {
            self.init(defaultAssetName)
        }
    }
}



#elseif os(macOS)

import SwiftUI


extension Image {

    /// Tries to create an image with one asset name, the falls back to a default asset name.
    public init(assetName: String, defaultingToAssetName defaultAssetName: String) {
        if let image = NSImage(named: assetName) {
            self.init(nsImage: image)
        } else {
            self.init(defaultAssetName)
        }
    }


    /// Tries to create an image with one asset name, the falls back to a default _system_ name.
    @available (macOS 11.0, *)
    public init(
        systemName: String,
        defaultingToSystemName defaultSystemName: String,
        accessibilityDescription: String? = nil
    ) {
        if let image = NSImage(systemSymbolName: systemName, accessibilityDescription: accessibilityDescription) {
            self.init(nsImage: image)
        } else {
            self.init(systemName: defaultSystemName)
        }
    }


    /// Tries to create an image with one asset name, the falls back to a default _asset_ name.
    @available (macOS 11.0, *)
    public init(
        systemName: String,
        defaultingToAssetName defaultAssetName: String,
        accessibilityDescription: String? = nil
    ) {
        if let image = NSImage(systemSymbolName: systemName, accessibilityDescription: accessibilityDescription) {
            self.init(nsImage: image)
        } else {
            self.init(defaultAssetName)
        }
    }
}


#endif
