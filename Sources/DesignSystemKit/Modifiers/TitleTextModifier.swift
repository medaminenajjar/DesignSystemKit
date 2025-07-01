import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct TitleTextModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .font(Typography.title)
            .foregroundColor(ColorPalette.textPrimary)
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public extension View {
    func titleText() -> some View {
        self.modifier(TitleTextModifier())
    }
}
