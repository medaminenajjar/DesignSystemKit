import SwiftUI

@available(iOS 14.0, *)
@available(macOS 11.0, *)
public struct EmptyStateView: View {
    public let title: String
    public let message: String
    public let imageName: String?
    public let actionText: String?
    public let action: (() -> Void)?

    public init(
        title: String,
        message: String,
        imageName: String? = nil,
        actionText: String? = nil,
        action: (() -> Void)? = nil
    ) {
        self.title = title
        self.message = message
        self.imageName = imageName
        self.actionText = actionText
        self.action = action
    }

    public var body: some View {
        VStack(spacing: DesignTokens.Spacing.medium) {
            if let imageName = imageName {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(ColorPalette.secondary)
            }

            Text(title)
                .font(.title3)
                .foregroundColor(ColorPalette.textPrimary)

            Text(message)
                .font(.body)
                .foregroundColor(ColorPalette.textSecondary)
                .multilineTextAlignment(.center)

            if let actionText = actionText, let action = action {
                Button(actionText, action: action)
                    .primaryButtonStyle()
            }
        }
        .padding()
        .multilineTextAlignment(.center)
    }
}
