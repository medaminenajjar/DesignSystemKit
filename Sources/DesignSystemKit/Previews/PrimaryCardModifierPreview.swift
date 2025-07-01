import SwiftUI

@available(iOS 14.0, *)
@available(macOS 12.0, *)
struct PrimaryCardModifierPreview: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Primary card modifier")
                .font(Typography.title)
                .padding()
        }
        .modifier(PrimaryCardModifier())
        .padding()
        .background(
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        )
    }
}

@available(iOS 14.0, *)
@available(macOS 12.0, *)
#Preview {
    PrimaryCardModifierPreview()
}
