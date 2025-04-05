import SwiftUI

@available(iOS 14.0, *)
public extension View {
    func backButton(
        description: String? = nil,
        color: Color = .blue,
        action: @escaping () -> Void
    ) -> some View {
        self.modifier(FlexibleBackButton(description: description, color: color, action: action))
    }
}
