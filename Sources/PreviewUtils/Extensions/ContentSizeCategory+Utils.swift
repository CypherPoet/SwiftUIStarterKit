#if DEBUG

import SwiftUI


extension ContentSizeCategory {
    static let smallestAndLargest = [allCases.first!, allCases.last!]


    var previewName: String {
        if self == Self.smallestAndLargest.first {
            return "Smallest"
        }

        if self == Self.smallestAndLargest.last {
            return "Largest"
        }

        return String(describing: self)
    }
}

#endif
