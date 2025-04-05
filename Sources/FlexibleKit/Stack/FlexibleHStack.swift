import SwiftUI

@available(iOS 14.0, *)
public struct FlexibleHStack<Content: View>: View {
    let spacing: CGFloat?
    let alignment: VerticalAlignment
    let padding: EdgeInsets
    let content: () -> Content

    public init(
        spacing: CGFloat? = nil,
        alignment: VerticalAlignment = .center,
        paddingEdges: Edge.Set = .all,
        paddingLength: CGFloat = 16,
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
        HStack(alignment: alignment, spacing: spacing) {
            content()
        }
        .padding(padding)
    }
}
