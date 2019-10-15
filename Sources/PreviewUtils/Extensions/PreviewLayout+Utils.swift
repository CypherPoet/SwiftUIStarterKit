import Foundation
import SwiftUI


/// Helpers for manually simulating landscape-mode previews, since this is not yet supported directly
extension PreviewLayout {
    public static var iPhoneSELandscape: PreviewLayout = .fixed(width: 568, height: 320)
    public static var iPhone11Landscape: PreviewLayout = .fixed(width: 896, height: 414)
}
