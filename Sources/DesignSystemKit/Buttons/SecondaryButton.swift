import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct SecondaryButton: View {
    let title: String
    let action: () -> Void

    public init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundColor(ColorPalette.primary)
                .padding()
                .frame(maxWidth: .infinity)
                .overlay(
                    RoundedRectangle(cornerRadius: DesignTokens.Radius.medium)
                        .stroke(ColorPalette.primary, lineWidth: 2)
                )
        }
    }
}
