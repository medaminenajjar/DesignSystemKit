import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
struct GlassCardPreview: View {
    var body: some View {
        ZStack {
            Image("background-image") // Optional: put an image or a gradient in the background
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            GlassCard {
                VStack(spacing: 12) {
                    Text("Carte Glass")
                        .font(Typography.title)
                        .foregroundColor(.white)
                    Text("Effet verre élégant avec fond flouté.")
                        .font(Typography.body)
                        .foregroundColor(.white.opacity(0.8))
                }
            }
            .padding()
        }
    }
}

@available(iOS 15.0, *)
@available(macOS 12.0, *)
#Preview {
    GlassCardPreview()
}
