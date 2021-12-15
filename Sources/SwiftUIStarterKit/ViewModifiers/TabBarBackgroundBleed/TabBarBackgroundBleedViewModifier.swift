//
//  TabBarBackgroundBleedViewModifier.swift
//  

import SwiftUI
import SafeAreaInsetDimensionsEnvironmentValue


@available(iOS 15.0, macOS 12.0, watchOS 8.0, tvOS 15.0, *)
public struct TabBarBackgroundBleedViewModifier<BackgroundContent>
    where BackgroundContent: ShapeStyle
{
    public var backgroundContent: BackgroundContent
    
    @Environment(\.safeAreaInsetDimensions)
    private var safeAreaInsetDimensions
}
    

@available(iOS 15.0, macOS 12.0, watchOS 8.0, tvOS 15.0, *)
extension TabBarBackgroundBleedViewModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        VStack(spacing: 0) {
            content
                .frame(maxHeight: .infinity)
            
            Rectangle()
                .fill(.clear)
                .frame(height: safeAreaInsetDimensions.bottom * 0.5)
                .ignoresSafeArea()
                .background(backgroundContent)
        }
    }
}
