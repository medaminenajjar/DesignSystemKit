import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public extension View {
    func primaryButtonStyle() -> some View {
        self
            .foregroundColor(.white)
            .padding()
            .background(ColorPalette.primary)
            .cornerRadius(DesignTokens.Radius.medium)
    }

    func secondaryButtonStyle() -> some View {
        self
            .foregroundColor(ColorPalette.primary)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: DesignTokens.Radius.medium)
                    .stroke(ColorPalette.primary, lineWidth: 2)
            )
    }
}
