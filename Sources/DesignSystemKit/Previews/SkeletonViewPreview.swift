import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
struct SkeletonViewPreview: View {
    var body: some View {
        VStack(spacing: DesignTokens.Spacing.medium) {
            SkeletonView(height: 24, width: 200)
            SkeletonView(height: 18, width: 150)
            SkeletonView(height: 18, width: 100)
        }
        .padding()
    }
}

@available(iOS 13.0, *)
@available(macOS 10.15, *)
#Preview {
    SkeletonViewPreview()
}
