import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct GlassCard<Content: View>: View {
    let content: Content
    let cornerRadius: CGFloat

    public init(cornerRadius: CGFloat = DesignTokens.Radius.large, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.cornerRadius = cornerRadius
    }

    public var body: some View {
        content
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(Color.white.opacity(0.15), lineWidth: 1)
            )
    }
}
