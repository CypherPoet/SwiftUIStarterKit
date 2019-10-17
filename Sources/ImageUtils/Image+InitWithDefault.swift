//
//  Image+InitWithDefault.swift
//  ViewExtensionsForBetterReusability
//
//  Created by CypherPoet on 10/16/19.
// ✌️
//

import UIKit
import SwiftUI


extension Image {

    public init(_ assetName: String, defaultAssetName: String) {
        if let image = UIImage(named: assetName) {
            self.init(uiImage: image)
        } else {
            self.init(defaultAssetName)
        }
    }
    
    
    public init(_ systemName: String, defaultSystemName: String) {
        if let image = UIImage(systemName: systemName) {
            self.init(uiImage: image)
        } else {
            self.init(systemName: defaultSystemName)
        }
    }
}
