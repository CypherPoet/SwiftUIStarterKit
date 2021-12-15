#if os(iOS) || os(tvOS)

import SwiftUI


@available(iOS 15.0, tvOS 15.0, *)
extension View {

    /// A hacky helper to style a `TabBar`'s appearance within a `SwiftUI` `ScrollView`
    /// on `iOS` and `tvOS`.
    ///
    /// This should be considered a temporary helper in lieu of an idiomatic
    /// approach as of `SwiftUI` 3.0.
    @available(
        swift,
        deprecated: 1.0,
        message: """
        This will be removed as soon as a built-in solution exists.
        
        It currently relies on digging into the internal `UITabBarAppearance` implementation \
        which should be considered unstable and unreliable.
        """
    )
    public func hijackedScrollViewTabBarAppearance(
        backgroundColor: Color
    ) -> some View {
        modifier(
            HackyScrollViewTabBarAppearanceViewModifier(
                backgroundColor: backgroundColor
            )
        )
    }
}


@available(iOS 15.0, tvOS 15.0, *)
struct HackyScrollViewTabBarAppearanceViewModifier {
    var backgroundColor: Color
    
    @State
    private var originalAppearance: UITabBarAppearance = UITabBar
        .appearance()
        .standardAppearance
}


@available(iOS 15.0, tvOS 15.0, *)
extension HackyScrollViewTabBarAppearanceViewModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .onAppear {
                originalAppearance = UITabBar.appearance().standardAppearance
                
                let newAppearance = UITabBarAppearance()
                
                newAppearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                newAppearance.backgroundColor = UIColor(backgroundColor.opacity(0.2))

                // This appearance will be active when content is
                // scrolling behind the TabView.
                UITabBar.appearance()
                    .standardAppearance = newAppearance
                
                // This appearance will be active when content is
                // scrolled all the way up.
                UITabBar.appearance()
                    .scrollEdgeAppearance = newAppearance
            }
            .onDisappear {
                UITabBar.appearance()
                    .standardAppearance = originalAppearance
                
                UITabBar.appearance()
                    .scrollEdgeAppearance = originalAppearance
            }
    }
}

#endif
