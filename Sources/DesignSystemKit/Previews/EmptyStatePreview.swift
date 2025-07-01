import SwiftUI

@available(iOS 14.0, *)
@available(macOS 11.0, *)
struct EmptyStatePreview: View {
    var body: some View {
        EmptyStateView(
            title: "Aucune donnée disponible",
            message: "Tu n’as encore rien ajouté ici. Commence dès maintenant !",
            imageName: "tray",
            actionText: "Ajouter un élément",
            action: {}
        )
        .padding()
        .background(ColorPalette.background)
    }
}

@available(iOS 14.0, *)
@available(macOS 11.0, *)
#Preview {
    EmptyStatePreview()
}
