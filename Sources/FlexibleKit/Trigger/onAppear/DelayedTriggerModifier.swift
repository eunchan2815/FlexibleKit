import SwiftUI

@available(iOS 14.0, *)
public extension View {
    func delayedTrigger(to flag: Binding<Bool>, after delay: Double) -> some View {
        self.modifier(FlexibleDelayedTrigger(flag: flag, delay: delay))
    }
}
