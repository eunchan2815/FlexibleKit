import SwiftUI

@available(iOS 14.0, *)
public struct FlexibleVStack<Content: View>: View {
    let alignment: HorizontalAlignment
    let padding: EdgeInsets
    let spacing: CGFloat?
    let content: () -> Content

    public init(
        alignment: HorizontalAlignment = .center,
        paddingEdges: Edge.Set = .all,
        paddingLength: CGFloat = 16,
        spacing: CGFloat? = nil,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.spacing = spacing
        self.alignment = alignment
        self.padding = EdgeInsets(
            top: paddingEdges.contains(.top) ? paddingLength : 0,
            leading: paddingEdges.contains(.leading) ? paddingLength : 0,
            bottom: paddingEdges.contains(.bottom) ? paddingLength : 0,
            trailing: paddingEdges.contains(.trailing) ? paddingLength : 0
        )
        self.content = content
    }

    public var body: some View {
        VStack(alignment: alignment, spacing: spacing) {
            content()
        }
        .padding(padding)
    }
}
