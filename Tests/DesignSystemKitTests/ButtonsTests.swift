import Testing
@testable import DesignSystemKit

struct ButtonsTests {
    @MainActor @Test
    func ButtonsTestsExpectedTitle() {
        let primaryButton = PrimaryButton("PrimaryButton") {
            
        }
        let secondaryButton = SecondaryButton("SecondaryButton") {
            
        }
        let destructiveButton = DestructiveButton("DestructiveButton") {
            
        }
        #expect(primaryButton.title == "PrimaryButton")
        #expect(secondaryButton.title == "SecondaryButton")
        #expect(destructiveButton.title == "DestructiveButton")
    }
}
