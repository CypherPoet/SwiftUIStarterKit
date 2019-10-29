//
//  CustomFilledButtonStyle.swift
//
//  Created by CypherPoet on 10/27/19.
// ✌️
//

import Foundation
import SwiftUI


public struct CustomFilledButtonStyle: ButtonStyle {
    public var fillColor: Color
    public var foregroundColor: Color
    public var foregroundColorWhenPressed: Color
    
    
    public init(
        fillColor: Color = .accentColor,
        foregroundColor: Color = .white,
        foregroundColorWhenPressed: Color = .gray
        
    ) {
        self.fillColor = fillColor
        self.foregroundColor = foregroundColor
        self.foregroundColorWhenPressed = foregroundColorWhenPressed
    }
    
    
    
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

