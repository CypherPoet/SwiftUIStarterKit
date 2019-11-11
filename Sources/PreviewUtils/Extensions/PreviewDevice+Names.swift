import SwiftUI


extension PreviewDevice {
    public enum Name {
        public static let iPhone11 = "iPhone 11"
        public static let iPhone11Pro = "iPhone 11 Pro"
        public static let iPhone11ProMax = "iPhone 11 Pro Max"
    }
}



extension PreviewDevice {
    
    public static let iPhone11 = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11)
    public static let iPhone11Pro = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11Pro)
    public static let iPhone11ProMax = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11ProMax)
}
