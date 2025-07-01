import SwiftUI

@available(iOS 15.0, *)
@available(macOS 11.0, *)
struct AlertBannerPreview: View {
    var body: some View {
        VStack(spacing: DesignTokens.Spacing.large) {
            AlertBanner(
                        type: .error,
                        title: "Erreur critique",
                        message: "Impossible de charger les données."
                    )
                    AlertBanner(
                        type: .success,
                        title: "Succès",
                        message: "Les données ont bien été enregistrées."
                    )
        }
        .padding()
        .background(ColorPalette.background)
    }
}

@available(iOS 15.0, *)
@available(macOS 11.0, *)
#Preview {
    AlertBannerPreview()
}
