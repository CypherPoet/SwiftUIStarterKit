import SwiftUI


extension View {

    public func shapeClipModifier<ShapeContent>(
        shape: ShapeContent
    ) -> some View
        where ShapeContent: Shape
    {
        modifier(ShapeClipModifier(shape: shape))
    }
}

