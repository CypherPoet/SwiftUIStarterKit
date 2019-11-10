import SwiftUI


extension PreviewDevice {
    public enum Name {
        public static let iPhone11 = "iPhone 11"
        public static let iPhone11Pro = "iPhone 11 Pro"
    }
}



extension PreviewDevice {
    
    public static let iPhone11 = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11)
    public static let iPhone11Pro = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11)
}
