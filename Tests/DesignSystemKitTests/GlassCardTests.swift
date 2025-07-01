import Testing
import SwiftUI
@testable import DesignSystemKit

struct GlassCardTests {
    @MainActor @Test
    func acceptsContent() {
        let view = makeGlassCard()
        let mirror = Mirror(reflecting: view)
        #expect(mirror.children.count > 0)
    }

    @MainActor
    private func makeGlassCard() -> some View {
        GlassCard {
            VStack(spacing: 8) {
                Text("Glass Test")
                    .font(.title)
                Text("This is a test")
                    .font(.body)
            }
        }
    }
}
