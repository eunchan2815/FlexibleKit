import SwiftUI

@available(iOS 14.0, *)
public struct FlexibleDelayedTrigger: ViewModifier {
    @Binding var flag: Bool
    var delay: Double
    
    public init(flag: Binding<Bool>, delay: Double) {
        self._flag = flag
        self.delay = delay
    }
    
    public func body(content: Content) -> some View {
        content
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                    withAnimation {
                        flag = true
                    }
                }
            }
    }
}
