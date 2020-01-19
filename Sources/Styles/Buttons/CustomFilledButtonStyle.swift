//
//  CustomFilledButtonStyle.swift
//
//  Created by CypherPoet on 10/27/19.
// ✌️
//

import Foundation
import SwiftUI


public struct CustomFilledButtonStyle: ButtonStyle {
    public var minWidth: CGFloat?
    public var minHeight: CGFloat?
    public var fillColor: Color
    public var foregroundColor: Color
    public var foregroundColorWhenPressed: Color
    
    
    public init(
        idealWidth: CGFloat? = 44,
        idealHeight: CGFloat? = 44,
        fillColor: Color = .accentColor,
        foregroundColor: Color = .white,
        foregroundColorWhenPressed: Color = .gray
    ) {
        self.minWidth = idealWidth
        self.minHeight = idealHeight
        self.fillColor = fillColor
        self.foregroundColor = foregroundColor
        self.foregroundColorWhenPressed = foregroundColorWhenPressed
    }
}
 

// MARK: - makeBody
extension CustomFilledButtonStyle {

    public func makeBody(configuration: ButtonStyleConfiguration) -> some View {
        configuration.label
            .frame(minWidth: minWidth, minHeight: minHeight)
            .padding(.horizontal, 14)
            .padding(.vertical, 6)
            .foregroundColor(
                configuration.isPressed ? foregroundColorWhenPressed : .white
            )
            .background(fillColor)
            .cornerRadius(8)
    }
}


