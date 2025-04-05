import SwiftUI

@available(iOS 14.0, *)
public func verticalAlignment(from alignment: Alignment) -> VerticalAlignment {
    switch alignment {
    case .top, .topLeading, .topTrailing:
        return .top
    case .bottom, .bottomLeading, .bottomTrailing:
        return .bottom
    default:
        return .center
    }
}
