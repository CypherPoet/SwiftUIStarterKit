//
//  PreviewUtils_ScreenPreviewHelperExample.swift
//  CypherPoetSwiftUIKitExamples
//
// Created by Brian Sipple on 6/7/20.
// Copyright © 2020 CypherPoet. All rights reserved.
//

import SwiftUI
import CypherPoetSwiftUIKit_PreviewUtils


struct PreviewUtils_ScreenPreviewHelperExample {

}


// MARK: - Computeds
extension PreviewUtils_ScreenPreviewHelperExample {
}


// MARK: - `View` Body
extension PreviewUtils_ScreenPreviewHelperExample: View {

    var body: some View {
        VStack {
            ForEach(PreviewDevice.all, id: \.self.rawValue) { device in
                Text(device.rawValue)
            }
        }
    }
}


// MARK: - View Variables
private extension PreviewUtils_ScreenPreviewHelperExample {
}


// MARK: - Private Helpers
private extension PreviewUtils_ScreenPreviewHelperExample {
}


#if DEBUG
// MARK: - Preview
struct PreviewUtils_ScreenPreviewHelperExample_Previews: PreviewProvider {

    static var previews: some View {
        PreviewUtils_ScreenPreviewHelperExample()
            .previewAsScreen()
    }
}
#endif
