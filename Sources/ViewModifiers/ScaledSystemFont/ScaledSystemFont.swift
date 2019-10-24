import Foundation
import SwiftUI


@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
public struct ScaledSystemFont: ViewModifier {
    
    /// The `ScaledFont` struct won't actually use this. But watching it here lets
    /// the system know that it needs to reload the `body` view when changes occur.
    @Environment(\.sizeCategory) var sizeCategory
    
    
    public var size: CGFloat
    public var weight: Font.Weight = .regular
    public var design: Font.Design = .default

    
    public func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        
        return content.font(.system(size: size, weight: weight, design: design))
    }
}
