import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct SkeletonView: View {
    public var cornerRadius: CGFloat = 8
    public var height: CGFloat = 20
    public var width: CGFloat? = nil

    @State private var phase: CGFloat = 0

    public init(cornerRadius: CGFloat = 8, height: CGFloat = 20, width: CGFloat? = nil) {
        self.cornerRadius = cornerRadius
        self.height = height
        self.width = width
    }

    public var body: some View {
        Rectangle()
            .fill(
                LinearGradient(gradient: Gradient(colors: [
                    Color.gray.opacity(DesignTokens.Opacity.low),
                    Color.gray.opacity(DesignTokens.Opacity.veryLow),
                    Color.gray.opacity(DesignTokens.Opacity.low)
                ]), startPoint: .leading, endPoint: .trailing)
            )
            .frame(width: width, height: height)
            .cornerRadius(cornerRadius)
            .shimmer(phase: phase)
            .onAppear {
                withAnimation(.linear(duration: DesignTokens.Duration.verySlow).repeatForever(autoreverses: false)) {
                    phase = 1
                }
            }
    }
}
