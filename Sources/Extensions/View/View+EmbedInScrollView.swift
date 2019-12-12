import SwiftUI


extension View {
    
    public func embedInScrollView(alignment: Alignment = .center) -> some View {
        GeometryReader { geometry in
            ScrollView {
                self.frame(
                    minHeight: geometry.size.height,
                    maxHeight: .infinity,
                    alignment: alignment
                )
            }
        }
    }
}
