import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
struct ColorPalettePreview: View {
    let colors: [(String, Color)] = [
        ("Primary", ColorPalette.primary),
        ("Secondary", ColorPalette.secondary),
        ("Background", ColorPalette.background),
        ("Surface", ColorPalette.surface),
        ("Error", ColorPalette.error),
        ("Text Primary", ColorPalette.textPrimary)
    ]

    var body: some View {
        VStack(spacing: DesignTokens.Spacing.medium) {
            ForEach(colors, id: \.0) { name, color in
                HStack {
                    Circle().fill(color).frame(width: 24, height: 24)
                    Text(name)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
#Preview {
    ColorPalettePreview()
}
