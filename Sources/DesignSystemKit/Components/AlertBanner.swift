import SwiftUI


public enum AlertBannerType {
    case success, error

    var backgroundColor: Color {
        switch self {
        case .success: return Color.green.opacity(DesignTokens.Opacity.veryLow)
        case .error: return Color.red.opacity(DesignTokens.Opacity.veryLow)
        }
    }

    var icon: String {
        switch self {
        case .success: return "✅"
        case .error: return "❌"
        }
    }
}

@available(iOS 15.0, *)
@available(macOS 11.0, *)
public struct AlertBanner: View {
    public let type: AlertBannerType
    public let title: String
    public let message: String

    public init(type: AlertBannerType, title: String, message: String) {
        self.type = type
        self.title = title
        self.message = message
    }

    public var body: some View {
        HStack(alignment: .top, spacing: DesignTokens.Spacing.medium) {
            Text(type.icon)
                .font(.title2)
            VStack(alignment: .leading, spacing: DesignTokens.Spacing.xSmall) {
                Text(title)
                    .font(.headline)
                Text(message)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(type.backgroundColor)
        .cornerRadius(DesignTokens.Radius.medium)
    }
}
