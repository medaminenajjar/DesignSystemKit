import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
struct CardViewPreview: View {
    var body: some View {
        CardView {
            VStack(alignment: .leading) {
                Text("Titre de carte")
                    .font(Typography.title)
                Text("Ceci est une carte stylisée avec une ombre légère.")
                    .font(Typography.body)
            }
        }
        .padding()
        .background(ColorPalette.background)
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
#Preview {
    CardViewPreview()
}
