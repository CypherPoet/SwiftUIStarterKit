#if DEBUG

import SwiftUI


struct ComponentPreview<Component: View>: View {
    var component: Component

    var body: some View {
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

    func previewAsComponent() -> some View {
        ComponentPreview(component: self)
    }
}

#endif
