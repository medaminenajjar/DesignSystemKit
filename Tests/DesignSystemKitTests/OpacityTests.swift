import Testing
@testable import DesignSystemKit

struct OpacityTests {
    @Test func valuesAreCorrect() {
        #expect(DesignTokens.Opacity.veryLow == 0.1)
        #expect(DesignTokens.Opacity.low == 0.3)
        #expect(DesignTokens.Opacity.disabled == 0.4)
        #expect(DesignTokens.Opacity.subtle == 0.8)
        #expect(DesignTokens.Opacity.full == 1.0)
    }

    @Test func orderIsConsistent() {
        #expect(DesignTokens.Opacity.veryLow < DesignTokens.Opacity.low)
        #expect(DesignTokens.Opacity.low < DesignTokens.Opacity.disabled)
        #expect(DesignTokens.Opacity.subtle < DesignTokens.Opacity.full)
    }
}
