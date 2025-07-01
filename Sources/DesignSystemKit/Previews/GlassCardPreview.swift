import SwiftUI

@available(iOS 26.0, *)
@available(macOS 26.0, *)
struct GlassCardPreview: View {
    var body: some View {
        ZStack {
            GlassCard {
                VStack(spacing: 12) {
                    Text("Carte Glass")
                        .font(Typography.title)
                        .foregroundColor(ColorPalette.textPrimary)
                    Text("Effet verre élégant avec fond flouté.")
                        .font(Typography.body)
                        .foregroundColor(ColorPalette.textSecondary.opacity(0.8))
                }
            }
            .padding()
        }
    }
}

@available(iOS 26.0, *)
@available(macOS 26.0, *)
#Preview {
    GlassCardPreview()
}
