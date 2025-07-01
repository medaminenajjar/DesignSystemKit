import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public enum ColorPalette {
    public static let primary = Color("PrimaryColor", bundle: .module)
    public static let secondary = Color("SecondaryColor", bundle: .module)
    public static let background = Color("BackgroundColor", bundle: .module)
    public static let surface = Color("SurfaceColor", bundle: .module)
    public static let error = Color("ErrorColor", bundle: .module)
    public static let textPrimary = Color("TextPrimary", bundle: .module)
    public static let textSecondary = Color("TextSecondary", bundle: .module)
}
