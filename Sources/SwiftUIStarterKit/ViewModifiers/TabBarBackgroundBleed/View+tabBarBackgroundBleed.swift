import SwiftUI


@available(iOS 15.0, macOS 12.0, watchOS 8.0, tvOS 15.0, *)
extension View {
    
    public func tabBarBackgroundBleed<BackgroundContent>(
        _ backgroundContent: BackgroundContent
    ) -> some View
        where BackgroundContent: ShapeStyle
    {
        modifier(TabBarBackgroundBleedViewModifier(backgroundContent: backgroundContent))
    }
}


