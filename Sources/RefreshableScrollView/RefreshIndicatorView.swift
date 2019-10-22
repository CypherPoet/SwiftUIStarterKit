import SwiftUI

/// An animated arrow will indicate how close we are
/// to the refresh triggering point.
///
/// Once we have reached the triggering point, we replace the arrow with an
/// Activity Indicator.
struct RefreshIndicatorView: View {
    
    /// The maximum scroll distance, or "threshold", that can be moved before the
    /// view will refresh
    var scrollThreshold: CGFloat
    
    var isRefreshing: Bool
    var isFrozen: Bool
    var arrowRotation: Angle
}


// MARK: - Body
extension RefreshIndicatorView {

    var body: some View {
        Group {
            if self.isRefreshing {
                VStack {
                    Spacer()
                    ActivityIndicator()
                    Spacer()
                }
                .frame(height: scrollThreshold)
                .fixedSize()
                .offset(y: (isRefreshing && isFrozen) ? 0.0 : -scrollThreshold)
            } else {
                Image(systemName: "arrow.down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: scrollThreshold * 0.25, height: scrollThreshold * 0.25)
                    .fixedSize()
                    .padding(scrollThreshold * 0.375)
                    .rotationEffect(arrowRotation)
                    .offset(y: (isRefreshing && isFrozen) ? 0.0 : -scrollThreshold)
            }
        }
    }
}


// MARK: - Preview
struct RefreshIndicatorView_Previews: PreviewProvider {

    static var previews: some View {
        RefreshIndicatorView(
            scrollThreshold: 80,
            isRefreshing: false,
            isFrozen: false,
            arrowRotation: .zero
        )
    }
}
