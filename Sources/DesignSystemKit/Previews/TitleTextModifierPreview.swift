import SwiftUI

@available(iOS 13.0, *)
@available(iOS 14.0, *)
@available(macOS 12.0, *)
struct TitleTextModifierPreview: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Title Text Modifier")
                .font(Typography.title)
                .padding()
        }
        .modifier(TitleTextModifier())
        .padding()
        .background(
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        )
    }
}

@available(iOS 13.0, *)
@available(macOS 12.0, *)
@available(iOS 14.0, *)
#Preview {
    TitleTextModifierPreview()
}
