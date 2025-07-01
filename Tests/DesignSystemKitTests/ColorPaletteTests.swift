import Testing
import SwiftUI
@testable import DesignSystemKit

struct ColorPaletteTests {
    @Test func colorsAreAvailable() {
        _ = ColorPalette.primary
        _ = ColorPalette.secondary
        _ = ColorPalette.background
        _ = ColorPalette.surface
        _ = ColorPalette.error
        _ = ColorPalette.textPrimary
    }
}
