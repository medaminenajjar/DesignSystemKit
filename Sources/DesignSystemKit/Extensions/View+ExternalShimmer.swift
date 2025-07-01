import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct ExternalShimmerModifier: ViewModifier {
    var phase: CGFloat

    public func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader { geo in
                    Color.white
                        .mask(
                            LinearGradient(
                                gradient: Gradient(colors: [.clear, .white.opacity(DesignTokens.Opacity.disabled), .clear]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                            .rotationEffect(.degrees(30))
                            .offset(x: geo.size.width * phase)
                        )
                }
            )
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public extension View {
    func shimmer(phase: CGFloat) -> some View {
        self.modifier(ExternalShimmerModifier(phase: phase))
    }
}
