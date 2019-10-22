import SwiftUI


struct ActivityIndicator: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView
    

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIViewType {
        UIActivityIndicatorView()
    }
    
    
    func updateUIView(_ activityIndicator: UIViewType, context: UIViewRepresentableContext<ActivityIndicator>) {
        activityIndicator.startAnimating()
    }
}
