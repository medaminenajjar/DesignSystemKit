import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
struct GlassBackgroundModifierPreview: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Modificateur Glass")
                .font(Typography.title)
                .padding()
        }
        .modifier(GlassBackgroundModifier())
        .padding()
        .background(
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        )
    }
}

@available(iOS 15.0, *)
@available(macOS 12.0, *)
#Preview {
    GlassBackgroundModifierPreview()
}
