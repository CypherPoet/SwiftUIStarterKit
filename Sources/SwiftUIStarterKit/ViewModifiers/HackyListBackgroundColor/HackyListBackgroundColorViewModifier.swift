#if os(iOS) || os(tvOS)


import SwiftUI


@available(iOS 14.0, tvOS 14.0, *)
extension View {

    /// A hacky helper to style the containing background color of a `SwiftUI` list view.
    /// on `iOS` and `tvOS`.
    ///
    /// As of `SwiftUI` 3.0, this is still the main way of setting a custom background color
    /// for an entire list.
    @available(
        swift,
        deprecated: 1.0,
        message: """
        This will be removed as soon as a built-in solution exists.
        
        It currently relies on digging into the internal `TableView` implementation \
        of the current platform, which should be considered unstable and unreliable.
        """
    )
    public func hijackedListBackgroundColor(_ color: Color) -> some View {
        modifier(HackyListBackgroundColorViewModifier(backgroundColor: color))
    }
}


@available(iOS 14.0, tvOS 14.0, *)
private struct HackyListBackgroundColorViewModifier {
    
    var backgroundColor: Color

    @State
    private var originalBackgroundColor: UIColor? = UITableView
        .appearance()
        .backgroundColor
}


@available(iOS 14.0, tvOS 14.0, *)
extension HackyListBackgroundColorViewModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .onAppear {
                originalBackgroundColor = UITableView.appearance().backgroundColor
                
                UITableView.appearance().backgroundColor = .init(backgroundColor)
            }
            .onDisappear {
                UITableView.appearance().backgroundColor = originalBackgroundColor
            }
    }
}



#endif
