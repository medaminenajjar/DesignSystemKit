import Testing
import SwiftUI
@testable import DesignSystemKit

struct CardViewTests {
    
    @MainActor @Test
    func cardViewContainsExpectedContent() {
        let view = cardExample()
        let mirror = Mirror(reflecting: view)
        
        #expect(mirror.children.count > 0)
    }
    
    @MainActor func cardExample() -> some View {
        CardView {
            VStack {
                Text("Example content")
                Text("Inside the card")
            }
        }
    }
}
