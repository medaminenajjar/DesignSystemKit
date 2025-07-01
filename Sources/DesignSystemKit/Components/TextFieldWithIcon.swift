import SwiftUI

@available(iOS 13.0, *)
@available(macOS 11.0, *)
public struct TextFieldWithIcon: View {
    @Binding var text: String
    let icon: String
    let placeholder: String

    public init(text: Binding<String>, icon: String, placeholder: String) {
        self._text = text
        self.icon = icon
        self.placeholder = placeholder
    }

    public var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
            TextField(placeholder, text: $text)
        }
        .padding()
        .background(ColorPalette.surface)
        .cornerRadius(DesignTokens.Radius.medium)
        .overlay(
            RoundedRectangle(cornerRadius: DesignTokens.Radius.medium)
                .stroke(Color.gray.opacity(DesignTokens.Opacity.low))
        )
    }
}
