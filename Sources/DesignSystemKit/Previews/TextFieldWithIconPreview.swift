import SwiftUI

@available(iOS 13.0, *)
@available(macOS 11.0, *)
struct TextFieldWithIconPreview: View {
    @State private var input: String = ""

    var body: some View {
        VStack(spacing: DesignTokens.Spacing.medium) {
            TextFieldWithIcon(
                text: $input,
                icon: "magnifyingglass",
                placeholder: "Recherche"
            )
        }
        .padding()
        .background(ColorPalette.background)
    }
}

@available(iOS 13.0, *)
@available(macOS 11.0, *)
#Preview {
    TextFieldWithIconPreview()
}
