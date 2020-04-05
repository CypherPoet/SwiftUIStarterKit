import SwiftUI


struct ActivityIndicatorViewWrapper {
    typealias UIViewType = UIActivityIndicatorView
    
    var isAnimating: Bool
    var color: UIColor
    var backgroundColor: UIColor
    var indicatorStyle: UIActivityIndicatorView.Style
    var hidesWhenStopped: Bool

    
    init(
        isAnimating: Bool,
        color: UIColor = .systemGray,
        backgroundColor: UIColor = .clear,
        indicatorStyle: UIActivityIndicatorView.Style = .large,
        hidesWhenStopped: Bool = true
    ) {
        self.isAnimating = isAnimating
        self.color = color
        self.backgroundColor = backgroundColor
        self.indicatorStyle = indicatorStyle
        self.hidesWhenStopped = hidesWhenStopped
    }
}


// MARK: - UIViewRepresentable
extension ActivityIndicatorViewWrapper: UIViewRepresentable {

    // Treat the `makeUIView` method as `init(frame: CGRect)` in a normal UIKit `UIView`.
    func makeUIView(context: Context) -> UIViewType {
        let activityIndicator = UIActivityIndicatorView()

        configure(activityIndicator)
        
        return activityIndicator
    }


    func updateUIView(_ activityIndicator: UIViewType, context: Context) {
        configure(activityIndicator)
        
        isAnimating ? activityIndicator.startAnimating() : activityIndicator.stopAnimating()
    }
}


// MARK: - View Configuration
extension ActivityIndicatorViewWrapper {
    
    func configure(_ activityIndicator: UIActivityIndicatorView) {
        activityIndicator.sizeToFit()
        activityIndicator.style = indicatorStyle
        activityIndicator.color = color
        activityIndicator.backgroundColor = backgroundColor
        activityIndicator.hidesWhenStopped = hidesWhenStopped
    }
}
