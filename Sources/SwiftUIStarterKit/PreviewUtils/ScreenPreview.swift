#if DEBUG

import SwiftUI


@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public struct ScreenPreview<Screen: View>: View {
    public var screen: Screen

    public var body: some View {
        ForEach(PreviewDevice.all, id: \.self.rawValue) { device in
            ForEach(ColorScheme.allCases, id: \.self) { scheme in
                NavigationView {
                    screen
                        .navigationTitle("")
                }
                .previewDevice(device)
                .colorScheme(scheme)
                .previewDisplayName("\(scheme.previewName): \(device.rawValue)")
            }
        }
    }
}


extension View {

    @available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
    public func previewAsScreen() -> some View {
        ScreenPreview(screen: self)
    }
}

#endif
