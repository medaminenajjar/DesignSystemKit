import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct TagView: View {
    public let label: String
    public let color: Color

    public init(_ label: String, color: Color) {
        self.label = label
        self.color = color
    }

    public var body: some View {
        Text(label)
            .font(.caption)
            .padding(.horizontal, DesignTokens.Spacing.small)
            .padding(.vertical, DesignTokens.Spacing.xSmall)
            .background(color.opacity(DesignTokens.Opacity.veryLow))
            .foregroundColor(color)
            .clipShape(Capsule())
    }
}
