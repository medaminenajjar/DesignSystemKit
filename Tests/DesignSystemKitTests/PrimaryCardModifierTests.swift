import Testing
import SwiftUI
@testable import DesignSystemKit

struct PrimaryCardModifierTests {

    @MainActor @Test
    func appliesModifierWithoutCrashing() {
        let view = Text("Test")
            .modifier(PrimaryCardModifier())

        let mirror = Mirror(reflecting: view)
        #expect(mirror.children.count >= 1)
    }

    @MainActor @Test
    func primaryCardComposable() {
        let content = VStack {
            Text("Titre")
            Text("Sous-titre")
        }
        .modifier(PrimaryCardModifier())

        #expect(Mirror(reflecting: content).subjectType is (any View.Type))
    }

    @MainActor @Test
    func supportsFluentExtension() {
        let view = Text("Test").primaryCard()
        let mirror = Mirror(reflecting: view)
        #expect(mirror.children.count > 0)
    }
}
