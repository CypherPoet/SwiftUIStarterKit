//
//  RoundedBorder.swift
//  ViewExtensionsForBetterReusability
//
//  Created by CypherPoet on 10/16/19.
// ✌️
//

import SwiftUI


struct RoundedBorderViewModifier<BorderStyle>
    where BorderStyle: ShapeStyle
{
    let borderContent: BorderStyle
    let lineWidth: Double
    let cornerRadius: Double
    
    /// Whether or not the content underneath the overlay will be clipped
    /// with the overlay's `RoundedRectangle` shape.
    let appliesClipping: Bool
    
    
    // MARK: - Init
    init(
        _ borderContent: BorderStyle,
        lineWidth: Double = 1,
        cornerRadius: Double = 0,
        appliesClipping: Bool = false
    ) {
        self.borderContent = borderContent
        self.lineWidth = lineWidth
        self.cornerRadius = cornerRadius
        self.appliesClipping = appliesClipping
    }
}


// MARK: - ViewModifier
extension RoundedBorderViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        if appliesClipping {
            baseModifiedContent(for: content)
                .clipShape(rectangleShape)
        } else {
            baseModifiedContent(for: content)
        }
    }
}


// MARK: - Computeds
extension RoundedBorderViewModifier {
    
    private var rectangleShape: some Shape {
        RoundedRectangle(cornerRadius: cornerRadius)
    }
    
    
    private func baseModifiedContent(for baseContent: Content) -> some View {
        baseContent
            .overlay(
                rectangleShape
                    .stroke(borderContent, lineWidth: lineWidth)
            )
    }
}
