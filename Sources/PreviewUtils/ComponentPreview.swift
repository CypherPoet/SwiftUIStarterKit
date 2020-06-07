#if DEBUG

import SwiftUI


public struct ComponentPreview<Component: View>: View {
    public var component: Component

    public var body: some View {
        ForEach(ColorScheme.allCases, id: \.self) { scheme in
            ForEach(ContentSizeCategory.smallestAndLargest, id: \.self) { category in
                self.component
                    .previewLayout(.sizeThatFits)
                    .background(Color(UIColor.systemBackground))
                    .colorScheme(scheme)
                    .environment(\.sizeCategory, category)
                    .previewDisplayName(
                        "\(scheme.previewName) + \(category.previewName)"
                    )
            }
        }
    }
}


extension View {

    public func previewAsComponent() -> some View {
        ComponentPreview(component: self)
    }
}

#endif
