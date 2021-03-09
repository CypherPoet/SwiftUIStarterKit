import SwiftUI


public struct CenteredViewModifier {
    public var alignment: AlignmentKind
}


// MARK: - ViewModifier
extension CenteredViewModifier: ViewModifier {

    @ViewBuilder
    public func body(content: Content) -> some View {
        switch alignment {
        case .horizontally:
            HStack {
                Spacer()
                content
                Spacer()
            }
        case .vertically:
            VStack {
                Spacer()
                content
                Spacer()
            }
        }
    }
}

extension CenteredViewModifier {
    
    public enum AlignmentKind {
        case horizontally
        case vertically
    }
}

