import SwiftUI


extension PreviewDevice {
    
    public enum Name {
        public static let iPhone8 = "iPhone 8"
        public static let iPhone8Plus = "iPhone 8 Plus"
        public static let iPhone11 = "iPhone 11"
        public static let iPhone11Pro = "iPhone 11 Pro"
        public static let iPhone11ProMax = "iPhone 11 Pro Max"
        
        public static let iPadPro9Point7Inch = "iPad Pro (9.7-inch)"
        public static let iPadPro11Inch = "iPad Pro (11-inch)"
    }
}



extension PreviewDevice {
    public static let iPhone8 = PreviewDevice(rawValue: PreviewDevice.Name.iPhone8)
    public static let iPhone8Plus = PreviewDevice(rawValue: PreviewDevice.Name.iPhone8Plus)
    public static let iPhone11 = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11)
    public static let iPhone11Pro = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11Pro)
    public static let iPhone11ProMax = PreviewDevice(rawValue: PreviewDevice.Name.iPhone11ProMax)
    
    public static let iPadPro9Point7Inch = PreviewDevice(rawValue: PreviewDevice.Name.iPadPro9Point7Inch)
    public static let iPadPro11Inch = PreviewDevice(rawValue: PreviewDevice.Name.iPadPro11Inch)
}
