//
//  CustomFilledButtonStyle.swift
//
//  Created by CypherPoet on 10/27/19.
// ✌️
//

import Foundation
import SwiftUI


public struct CustomFilledButtonStyle: ButtonStyle {
    public var fillColor: Color = .accentColor
    public var foregroundColor: Color = .white
    public var foregroundColorWhenPressed: Color = .gray
    
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 44, minHeight: 44)
            .padding(.horizontal, 14)
            .padding(.vertical, 6)
            .foregroundColor(
                configuration.isPressed ? foregroundColorWhenPressed : .white
            )
            .background(fillColor)
            .cornerRadius(8)
    }
}

