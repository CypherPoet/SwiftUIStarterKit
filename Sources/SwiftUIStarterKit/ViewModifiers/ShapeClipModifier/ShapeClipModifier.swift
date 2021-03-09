import SwiftUI


struct ShapeClipModifier<ShapeContent>
where ShapeContent: Shape
{
    var shape: ShapeContent
}


// MARK: - ViewModifier
extension ShapeClipModifier: ViewModifier {

    func body(content: Content) -> some View {
        content.clipShape(shape)
    }
}
