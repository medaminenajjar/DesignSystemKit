import SwiftUI

@available(iOS 26.0, *)
@available(macOS 26.0, *)
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
            .glassEffect()
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
