import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public enum Typography {
    public static let largeTitle = Font.system(size: 34, weight: .bold, design: .default)
    public static let title = Font.system(size: 28, weight: .semibold, design: .default)
    public static let headline = Font.system(size: 20, weight: .semibold)
    public static let body = Font.system(size: 16)
    public static let caption = Font.system(size: 12, weight: .regular)
    public static let footnote = Font.system(size: 10, weight: .light)
}
