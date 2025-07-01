import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct ShimmerModifier: ViewModifier {
    @State private var phase: CGFloat = 0

    public func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader { geometry in
                    Color.white
                        .mask(
                            LinearGradient(
                                gradient: Gradient(colors: [.clear, .white.opacity(DesignTokens.Opacity.disabled), .clear]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            .rotationEffect(.degrees(30))
                            .offset(x: geometry.size.width * phase)
                        )
                }
                .clipped()
            )
            .onAppear {
                withAnimation(.linear(duration: DesignTokens.Duration.verySlow).repeatForever(autoreverses: false)) {
                    phase = 1.5
                }
            }
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public extension View {
    func shimmer() -> some View {
        self.modifier(ShimmerModifier())
    }
}
