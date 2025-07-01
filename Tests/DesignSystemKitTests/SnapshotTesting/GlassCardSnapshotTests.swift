import SnapshotTesting
import Testing
import SwiftUI
@testable import DesignSystemKit

struct GlassCardSnapshotTests {

    @MainActor @Test
    func glassCardWithContent() throws {
        let view = GlassCard {
            VStack(spacing: 8) {
                Text("🧊 Glass Card")
                    .font(.headline)
                Text("Blur effect")
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .padding()

        try assertSnapshot(of: view, as: .image(layout: .device(config: .iPhone13)))
    }
}

