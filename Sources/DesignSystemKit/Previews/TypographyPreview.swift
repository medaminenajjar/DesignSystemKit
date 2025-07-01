import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
struct TypographyPreview: View {
    var body: some View {
        VStack(alignment: .leading, spacing: DesignTokens.Spacing.medium) {
            Text("Large Title").font(Typography.largeTitle)
            Text("Title").font(Typography.title)
            Text("Headline").font(Typography.headline)
            Text("Body").font(Typography.body)
            Text("Caption").font(Typography.caption)
        }
        .padding()
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
#Preview {
    TypographyPreview()
}
