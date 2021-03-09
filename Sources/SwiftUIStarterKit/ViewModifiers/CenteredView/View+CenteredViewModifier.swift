import SwiftUI


extension View {
    
    public func centered(
        _ alignmentKind: CenteredViewModifier.AlignmentKind
    ) -> some View {
        modifier(
            CenteredViewModifier(
                alignment: alignmentKind
            )
        )
    }
    
}
