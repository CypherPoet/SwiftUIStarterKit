import Foundation
import SwiftUI


public struct ScaledSystemFont: ViewModifier {
    
    /// The `ScaledFont` struct won't actually use this. But watching it here lets
    /// the system know that it needs to reload the `body` view when changes occur.
    @Environment(\.sizeCategory) var sizeCategory
    
    
    public var size: CGFloat
    public var weight: Font.Weight = .regular
    public var design: Font.Design = .default

    
    public func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        
        return content.font(.system(size: scaledSize, weight: weight, design: design))
    }
}
