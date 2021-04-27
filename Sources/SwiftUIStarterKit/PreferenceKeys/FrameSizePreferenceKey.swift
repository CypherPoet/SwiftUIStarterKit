import SwiftUI


public struct FrameSizePreferenceKey: PreferenceKey {
    public static let defaultValue = CGSize.zero
    
    public static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
    }
}


extension View {
    
    public func readingFrameSize(_ newSizeHandler: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometry in
                Color.clear.preference(key: FrameSizePreferenceKey.self, value: geometry.size)
            }
        )
        .onPreferenceChange(
            FrameSizePreferenceKey.self,
            perform: { newSize in
                DispatchQueue.main.async {
                    newSizeHandler(newSize)
                }
            }
        )
    }
}
