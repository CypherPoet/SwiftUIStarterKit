//
//  RootView.swift
//  CypherPoetSwiftUIKitExamples
//
// Created by Brian Sipple on 6/7/20.
// Copyright © 2020 CypherPoet. All rights reserved.
//

import SwiftUI


struct RootView {

}


// MARK: - Computeds
extension RootView {
}


// MARK: - `View` Body
extension RootView: View {

    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(
                        destination: PreviewUtilsExamples()
                    ) {
                        Text("Preview Utils")
                    }
                }
            }
            .navigationBarTitle("CypherPoetSwiftUIKit")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// MARK: - View Variables
private extension RootView {
}


// MARK: - Private Helpers
private extension RootView {
}


#if DEBUG
// MARK: - Preview
struct RootView_Previews: PreviewProvider {

    static var previews: some View {
        RootView()
    }
}
#endif
