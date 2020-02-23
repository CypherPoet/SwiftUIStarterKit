import SwiftUI
import UIKit


public struct UIActivityIndicatorWrapper {
    public typealias UIViewType = UIActivityIndicatorView
    
    public var color: UIColor
    public var backgroundColor: UIColor
    public var indicatorStyle: UIActivityIndicatorView.Style
    

    public init(
        color: UIColor = .systemGray,
        backgroundColor: UIColor = .clear,
        indicatorStyle: UIActivityIndicatorView.Style = .large
    ) {
        self.color = color
        self.backgroundColor = backgroundColor
        self.indicatorStyle = indicatorStyle
    }
}


// MARK: - UIViewRepresentable
extension UIActivityIndicatorWrapper: UIViewRepresentable {

    public func makeUIView(
        context: UIViewRepresentableContext<UIActivityIndicatorWrapper>
    ) -> UIViewType {
        let activityIndicator = UIActivityIndicatorView(style: indicatorStyle)
        
        activityIndicator.sizeToFit()
        activityIndicator.color = color
        activityIndicator.backgroundColor = backgroundColor
        
        return activityIndicator
    }


    public func updateUIView(
        _ activityIndicator: UIViewType,
        context: UIViewRepresentableContext<UIActivityIndicatorWrapper>
    ) {
        activityIndicator.startAnimating()
    }
}
