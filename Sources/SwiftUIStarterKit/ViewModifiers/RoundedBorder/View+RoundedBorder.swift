//
//  View+RoundedBorder.swift
//
//  Created by CypherPoet on 10/16/19.
// ✌️
//


import Foundation
import SwiftUI


extension View {
    
    public func roundedBorder<BorderStyle>(
        _ content: BorderStyle,
        lineWidth: Double = 1.0,
        cornerRadius: Double,
        appliesClipping: Bool = false
    ) -> some View
        where BorderStyle: ShapeStyle
    {
        modifier(
            RoundedBorderViewModifier(
                content,
                lineWidth: lineWidth,
                cornerRadius: cornerRadius,
                appliesClipping: appliesClipping
            )
        )
    }
}
