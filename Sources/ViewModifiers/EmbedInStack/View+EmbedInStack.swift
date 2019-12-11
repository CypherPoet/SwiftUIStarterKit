import SwiftUI


extension Group where Content: View {
    
    /// Dynamically embed the content of a `Group` in a `VStack` or an `HStack`, depending
    /// on the specified `verticalSizes.`
    public func embedInStack(
        verticalSizes: [ContentSizeCategory] = EmbedInStack.defaultVerticalSizes
    ) -> some View {
        ModifiedContent(
            content: self,
            modifier: EmbedInStack(verticalSizes: verticalSizes)
        )
    }
}
