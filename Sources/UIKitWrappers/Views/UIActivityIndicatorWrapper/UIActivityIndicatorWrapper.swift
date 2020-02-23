import SwiftUI
import UIKit


public struct UIActivityIndicatorWrapper {
    typealias UIViewType = UIActivityIndicatorView
    
    public var color: UIColor = .systemGray
    public var backgroundColor: UIColor = .clear
    public var indicatorStyle: UIActivityIndicatorView.Style = .large
}


// MARK: - UIViewRepresentable
extension UIActivityIndicatorWrapper: UIViewRepresentable {

    func makeUIView(
        context: UIViewRepresentableContext<UIActivityIndicatorWrapper>
    ) -> UIViewType {
        let activityIndicator = UIActivityIndicatorView(style: indicatorStyle)
        
        activityIndicator.sizeToFit()
        activityIndicator.color = color
        activityIndicator.backgroundColor = backgroundColor
        
        return activityIndicator
    }


    func updateUIView(
        _ activityIndicator: UIViewType,
        context: UIViewRepresentableContext<UIActivityIndicatorWrapper>
    ) {
        activityIndicator.startAnimating()
    }
}
