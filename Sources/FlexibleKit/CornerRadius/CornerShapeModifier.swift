import SwiftUI

@available(iOS 14.0, *)
public extension View {
    func roundedCorners(_ radius: CGFloat, corners: FlexibleCornerShape.RectCorner) -> some View {
        clipShape(FlexibleCornerShape(radius: radius, corners: corners))
    }
}
