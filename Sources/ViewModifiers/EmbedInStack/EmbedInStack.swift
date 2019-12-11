import SwiftUI


public struct EmbedInStack {
    public static let defaultVerticalSizes: [ContentSizeCategory] = [
        .accessibilityLarge,
        .accessibilityExtraLarge,
        .accessibilityExtraExtraLarge,
        .accessibilityExtraExtraExtraLarge,
    ]
    
    @Environment(\.sizeCategory) var sizeCategory
    
    private let verticalSizes: [ContentSizeCategory]
    
    
    init(
        verticalSizes: [ContentSizeCategory] = Self.defaultVerticalSizes
    ) {
        self.verticalSizes = verticalSizes
    }
}


extension EmbedInStack {
    var isVerticallyStacked: Bool { verticalSizes.contains(sizeCategory) }
}


extension EmbedInStack: ViewModifier {
    
    public func body(content: Content) -> some View {
        isVerticallyStacked ?
            AnyView(VStack { content })
            : AnyView(HStack { content })
    }
}
