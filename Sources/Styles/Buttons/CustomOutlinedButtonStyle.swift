//
//  CustomOutlinedButtonStyle.swift
//
//  Created by CypherPoet on 10/27/19.
// ✌️
//

import Foundation
import SwiftUI


public struct CustomOutlinedButtonStyle: ButtonStyle {
    public var foregroundColor: Color = .accentColor
    public var borderColor: Color = .accentColor
    
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 44, minHeight: 44)
            .padding()
            .foregroundColor(foregroundColor)
            .background(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(borderColor)
            )
            .border(Color.accentColor, width: 2)
    }
}
