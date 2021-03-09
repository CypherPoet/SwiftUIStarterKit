import SwiftUI


public struct EmbedInCompactableStackViewModifier {
    public static let defaultVerticalSizes: [ContentSizeCategory] = [
        .accessibilityLarge,
        .accessibilityExtraLarge,
        .accessibilityExtraExtraLarge,
        .accessibilityExtraExtraExtraLarge,
    ]
    
    @Environment(\.sizeCategory) var sizeCategory
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    
    private let compactableContentSizes: [ContentSizeCategory]
    
    
    init(
        compactableContentSizes: [ContentSizeCategory] = Self.defaultVerticalSizes
    ) {
        self.compactableContentSizes = compactableContentSizes
    }
}


extension EmbedInCompactableStackViewModifier {
    var isVerticallyStacked: Bool {
        horizontalSizeClass == .compact ||
        compactableContentSizes.contains(sizeCategory)
    }
}


// MARK: - ViewModifier
extension EmbedInCompactableStackViewModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        if isVerticallyStacked {
            VStack { content }
        } else {
            HStack { content }
        }
    }
}
