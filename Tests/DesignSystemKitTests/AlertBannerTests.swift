import Testing
@testable import DesignSystemKit

struct AlertBannerTests {
    @MainActor @Test func bannerInitializesWithMessage() {
        let banner = AlertBanner(
                    type: .error,
                    title: "Erreur critique",
                    message: "An error occurred"
                )
        #expect(banner.message == "An error occurred")
    }
}


