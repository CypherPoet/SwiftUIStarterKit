//
//  ConditionallyAppliedViewModifier.swift
//
// ✌️
//

import Foundation
import SwiftUI


extension View {
    
    /// Conditionally applies a modifier to a view, based upon the truthiness of a Boolean.
    @ViewBuilder
    public func depending<ModifierIfTrue, ModifierIfFalse>(
        onWhether condition: Bool,
        apply modifierIfTrue: ModifierIfTrue,
        or modifierIfFalse: ModifierIfFalse
    ) -> some View where
        ModifierIfTrue: ViewModifier,
        ModifierIfFalse: ViewModifier
    {
        if condition {
            modifier(modifierIfTrue)
        } else {
            modifier(modifierIfFalse)
        }
    }
}
