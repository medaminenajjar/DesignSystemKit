import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
struct TagViewPreview: View {
    var body: some View {
        HStack(spacing: DesignTokens.Spacing.small) {
            TagView("Info", color: .blue)
            TagView("Succès", color: .green)
            TagView("Erreur", color: .red)
        }
        .padding()
        .background(ColorPalette.background)
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
#Preview {
    TagViewPreview()
}
