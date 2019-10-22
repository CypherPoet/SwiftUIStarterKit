import SwiftUI


extension RefreshableScrollView {
    
    /// View to set a preference containing its own position
    struct FixedView: View {
        
        var body: some View {
            GeometryReader { geometry in
                Color.clear.preference(
                    key: PreferenceKeys.RefreshableScrollView.self,
                    value: [
                        PreferenceKeys.RefreshableScrollView.PreferenceData(
                            viewType: .fixedView,
                            bounds: geometry.frame(in: .global)
                        )
                    ]
                )
            }
        }
    }
}
