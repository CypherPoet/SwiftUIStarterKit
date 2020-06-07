//
//  PreviewUtilsExamples.swift
//  CypherPoetSwiftUIKitExamples
//
// Created by Brian Sipple on 6/7/20.
// Copyright © 2020 CypherPoet. All rights reserved.
//

import SwiftUI


struct PreviewUtilsExamples {

}


// MARK: - Computeds
extension PreviewUtilsExamples {
}


// MARK: - `View` Body
extension PreviewUtilsExamples: View {

    var body: some View {
        List {
            NavigationLink(destination: PreviewUtils_DevicesNamesExample()) {
                Text("Device Names")
            }
            NavigationLink(destination: PreviewUtils_ScreenPreviewHelperExample()) {
                Text("Screen Preview Helper")
            }
        }
        .navigationBarTitle("Preview Utils")
    }
}


// MARK: - View Variables
private extension PreviewUtilsExamples {
}


// MARK: - Private Helpers
private extension PreviewUtilsExamples {
}


#if DEBUG
// MARK: - Preview
struct PreviewUtilsExamples_Previews: PreviewProvider {

    static var previews: some View {
        NavigationView {
            PreviewUtilsExamples()
        }
    }
}
#endif
