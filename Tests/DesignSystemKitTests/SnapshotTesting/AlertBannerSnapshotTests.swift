import SnapshotTesting
import Testing
import SwiftUI
@testable import DesignSystemKit

struct AlertBannerSnapshotTests {

    @MainActor @Test
    func errorBannerStyle() throws {
        let view = AlertBanner(type: .error, title: "Critical error", message: "Unable to load data.")
            .padding()

        try assertSnapshot(of: view, as: .image(layout: .fixed(width: 375, height: 120)))
    }

    @MainActor @Test
    func successBanner() throws {
        let view = AlertBanner(type: .success, title: "Success", message: "The data has been saved successfully.")
            .padding()

        try assertSnapshot(of: view, as: .image(layout: .device(config: .iPhone13)))
    }
}
