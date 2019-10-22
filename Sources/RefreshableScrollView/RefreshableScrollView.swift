import SwiftUI


/// 📝 Usage Example: https://github.com/CypherPoet/blog--swiftui-lab/tree/master/ScrollViewPullToRefresh/ScrollViewPullToRefresh
/// 🔗: Adapted from https://swiftui-lab.com/scrollview-pull-to-refresh/
///
/// In order to implement the refresh control, we first need to find a way of obtaining the scroll offset of our ScrollView.
/// (This is where View Preferences come handy.)

/// In order to get the offset, we will place two invisible views.
/// One will be at the top of the scrolling contents (MovingView()), and the other fixed at the top of the
/// ScrollView (FixedView()).
///
/// The difference in their Y position, will be the scrolled offset.
struct RefreshableScrollView<Content: View>: View {

    var scrollThreshold: CGFloat
    @Binding var isRefreshing: Bool
    let content: Content

    @State private var scrollOffset: CGFloat = 0 {
        didSet {
            self.arrowRotation = self.arrowRotation(fromScrollOffset: scrollOffset)
        }
    }
    
    @State private var previousScrollOffset: CGFloat = 0
    @State private var isFrozen: Bool = false
    @State private var arrowRotation: Angle = .radians(0)
    
    
    init(
        scrollThreshold: CGFloat = 80,
        isRefreshing: Binding<Bool>,
        @ViewBuilder content: () -> Content
    ) {
        self.scrollThreshold = scrollThreshold
        self._isRefreshing = isRefreshing
        self.content = content()
    }
}


// MARK: - Body
extension RefreshableScrollView {

    var body: some View {
        VStack {
            ScrollView {
                ZStack(alignment: .top) {
                    MovingView()
                    
                    VStack {
                        content.alignmentGuide(.top) { _ in
                            // Temporarily displace the scroll view contents while the
                            // refresh is in progress.
                            (self.isRefreshing && self.isFrozen) ? -self.scrollThreshold : 0.0
                        }
                    }
                    
                    // 📝 TODO: Ideally, this view would be configurable
                    RefreshIndicatorView(
                        scrollThreshold: self.scrollThreshold,
                        isRefreshing: self.isRefreshing,
                        isFrozen: self.isFrozen,
                        arrowRotation: self.arrowRotation
                    )
                }
            }
            .background(FixedView())
            .onPreferenceChange(PreferenceKeys.RefreshableScrollView.self) { preferences in
                self.updateScrollState(with: preferences)
            }
        }
    }
}


// MARK: - Private Helpers
extension RefreshableScrollView {
    
    private func arrowRotation(fromScrollOffset scrollOffset: CGFloat) -> Angle {
        // Begin arrow rotation after passing
        // 60% of the scroll tolerence.
        print("scrollOffset: \(scrollOffset)")
        print("scrollThreshold: \(scrollThreshold)")
        
        if scrollOffset < scrollThreshold * 0.60 {
            return .radians(0)
        } else {
            let h = Double(self.scrollThreshold)
            let d = Double(scrollOffset)
            let v = max(min(d - (h * 0.6), h * 0.4), 0)
            
            return .radians((.pi * v) / (h * 0.4))
        }
    }
    
    
    private func updateScrollState(
        with scrollViewPreferences: PreferenceKeys.RefreshableScrollView.Value
    ) {
        DispatchQueue.main.async {
            
            // Calculate the scroll offset
            guard
                let fixedViewBounds = scrollViewPreferences.first(where: { $0.viewType == .fixedView })?.bounds,
                let movingViewBounds = scrollViewPreferences.first(where: { $0.viewType == .movingView })?.bounds
            else {
                preconditionFailure("No bounds found in view preferences")
            }
            
            self.scrollOffset = movingViewBounds.minY - fixedViewBounds.minY
            
            // Crossing the threshold on the way down, we start the refresh process
            if
                !self.isRefreshing &&
                (
                    self.scrollOffset > self.scrollThreshold &&
                    self.previousScrollOffset <= self.scrollThreshold
                )
            {
                self.isRefreshing = true
            }
            
            
            if self.isRefreshing {
                // Crossing the threshold on the way up, we add a space at the top of the scrollview
                if self.previousScrollOffset > self.scrollThreshold && self.scrollOffset <= self.scrollThreshold {
                    self.isFrozen = true
                }
            } else {
                // remove the sapce at the top of the scroll view
                self.isFrozen = false
            }
            
            // Update last scroll offset
            self.previousScrollOffset = self.scrollOffset
        }
    }
}
