import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct CardView<Content: View>: View {
    private let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        content
            .padding()
            .background(ColorPalette.surface)
            .cornerRadius(DesignTokens.Radius.medium)
            .shadow(color: .black.opacity(DesignTokens.Opacity.veryLow), radius: DesignTokens.Radius.verySmall, x: 0, y: 2)
    }
}
