import SwiftUI


public struct MaxWidthPreferenceKey: PreferenceKey {
    public static let defaultValue = CGFloat(0.0)
    
    public static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}


extension View {
    
    public func readingMaxWidth(_ newWidthHandler: @escaping (CGFloat) -> Void) -> some View {
        background(
            GeometryReader { geometry in
                Color
                    .clear
                    .preference(key: MaxWidthPreferenceKey.self, value: geometry.size.width)
            }
        )
        .onPreferenceChange(MaxWidthPreferenceKey.self, perform: newWidthHandler)
    }
}
