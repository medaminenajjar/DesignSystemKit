import Testing
@testable import DesignSystemKit

struct RadiusTests {
    @Test
    func testConstants() {
        #expect(DesignTokens.Radius.small == 6)
        #expect(DesignTokens.Radius.medium < DesignTokens.Radius.full)
    }
}
