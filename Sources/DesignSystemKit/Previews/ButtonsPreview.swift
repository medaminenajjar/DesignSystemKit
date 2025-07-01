import SwiftUI

@available(iOS 15.0, *)
@available(macOS 10.15, *)
struct ButtonsPreview: View {
    var body: some View {
        VStack(spacing: DesignTokens.Spacing.medium) {
            PrimaryButton("Valider") {}
            SecondaryButton("Annuler") {}
            DestructiveButton("Supprimer") {}
        }
        .padding()
        .background(ColorPalette.background)
    }
}

@available(iOS 15.0, *)
@available(macOS 10.15, *)
#Preview {
    ButtonsPreview()
}
