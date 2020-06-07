//
//  PreviewUtils_DevicesNamesExample.swift
//  CypherPoetSwiftUIKitExamples
//
// Created by Brian Sipple on 6/7/20.
// Copyright © 2020 CypherPoet. All rights reserved.
//

import SwiftUI
import CypherPoetSwiftUIKit_PreviewUtils


struct PreviewUtils_DevicesNamesExample {

}


// MARK: - Computeds
extension PreviewUtils_DevicesNamesExample {
}


// MARK: - `View` Body
extension PreviewUtils_DevicesNamesExample: View {

    var body: some View {
        VStack {
            ForEach(PreviewDevice.all, id: \.self.rawValue) { device in
                Text(device.rawValue)
            }
        }
    }
}


// MARK: - View Variables
private extension PreviewUtils_DevicesNamesExample {
}


// MARK: - Private Helpers
private extension PreviewUtils_DevicesNamesExample {
}


#if DEBUG
// MARK: - Preview
struct PreviewUtils_DevicesNamesExample_Previews: PreviewProvider {

    static var previews: some View {
        PreviewUtils_DevicesNamesExample()
    }
}
#endif
