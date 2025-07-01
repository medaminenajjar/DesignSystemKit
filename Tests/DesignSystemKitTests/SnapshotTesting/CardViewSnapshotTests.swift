import SnapshotTesting
import Testing
import SwiftUI
@testable import DesignSystemKit

struct CardViewSnapshotTests {

    @MainActor @Test
    func defaultCardView() throws {
        let view = CardView {
            VStack(alignment: .leading) {
                Text("Titre")
                Text("Contenu de la carte")
            }
            .padding()
        }
        .padding()

        try assertSnapshot(of: view, as: .image(layout: .device(config: .iPhone13)))
    }
}
