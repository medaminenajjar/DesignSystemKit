import SnapshotTesting
import Testing
import SwiftUI
@testable import DesignSystemKit

struct PrimaryCardModifierSnapshotTests {

    @MainActor @Test
    func rendersAsExpected() throws {
        let view = VStack(spacing: 12) {
            Text("Titre principal")
                .font(.title2)
                .modifier(PrimaryCardModifier())
            Text("Sous-titre ou contenu")
                .modifier(PrimaryCardModifier())
        }
        .padding()
        .background(Color.gray.opacity(0.1))

        try assertSnapshot(
            of: view,
            as: .image(layout: .device(config: .iPhone13))
        )
    }
}
