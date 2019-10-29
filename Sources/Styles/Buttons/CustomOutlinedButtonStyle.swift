//
//  CustomOutlinedButtonStyle.swift
//
//  Created by CypherPoet on 10/27/19.
// ✌️
//

import Foundation
import SwiftUI


public struct CustomOutlinedButtonStyle: ButtonStyle {
    public var width: CGFloat
    public var height: CGFloat
    public var foregroundColor: Color
    public var borderColor: Color
    public var borderWidth: CGFloat
    
    
    public init(
        width: CGFloat = 44,
        height: CGFloat = 44,
        foregroundColor: Color = .accentColor,
        borderColor: Color = .accentColor,
        borderWidth: CGFloat = 3.0
    ) {
        self.width = width
        self.height = height
        self.foregroundColor = foregroundColor
        self.borderColor = borderColor
        self.borderWidth = borderWidth
    }
    
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: width, height: height)
            .padding(.horizontal, 14)
            .padding(.vertical, 6)
            .foregroundColor(foregroundColor)
            .background(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
    }
}

