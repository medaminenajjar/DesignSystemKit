import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct GlassBackgroundModifier: ViewModifier {
    public func body(content: Content) -> some View {
        content
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: DesignTokens.Radius.large))
    }
}

@available(iOS 15.0, *)
@available(macOS 12.0, *)
public extension View {
    func glassBackground() -> some View {
        self.modifier(GlassBackgroundModifier())
    }
}
