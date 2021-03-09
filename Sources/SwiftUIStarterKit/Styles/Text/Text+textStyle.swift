import Foundation
import SwiftUI



extension Text {

    public func textStyle<Style>(_ style: Style) -> some View
        where Style: ViewModifier
    {
        modifier(style)
    }
}
