import SwiftUI

@available(iOS 15.0, *)
@available(macOS 10.15, *)
public struct PrimaryButton: View {
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
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(ColorPalette.primary)
                .cornerRadius(DesignTokens.Radius.medium)
        }
    }
}
