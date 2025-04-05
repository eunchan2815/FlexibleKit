import SwiftUI

@available(iOS 14.0, *)
public func horizontalAlignment(from alignment: Alignment) -> HorizontalAlignment {
    switch alignment {
    case .leading, .topLeading, .bottomLeading:
        return .leading
    case .trailing, .topTrailing, .bottomTrailing:
        return .trailing
    default:
        return .center
    }
}
