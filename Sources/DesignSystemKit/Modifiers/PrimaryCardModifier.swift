import SwiftUI

@available(iOS 13.0, *)
@available(macOS 12.0, *)
public struct PrimaryCardModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .padding()
            .background(ColorPalette.surface)
            .cornerRadius(DesignTokens.Radius.medium)
            .shadow(color: .black.opacity(DesignTokens.Opacity.veryLow), radius: DesignTokens.Radius.small, x: 0, y: 2)
    }
}

@available(iOS 13.0, *)
@available(macOS 12.0, *)
public extension View {
    func primaryCard() -> some View {
        self.modifier(PrimaryCardModifier())
    }
}
