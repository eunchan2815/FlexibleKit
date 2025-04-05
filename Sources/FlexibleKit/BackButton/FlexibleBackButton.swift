import SwiftUI

@available(iOS 14.0, *)
public struct FlexibleBackButton: ViewModifier {
    let description: String?
    let color: Color
    let action: () -> Void
    
    public init(description: String? = nil, color: Color = .blue, action: @escaping () -> Void) {
        self.action = action
        self.description = description
        self.color = color
    }
    
    public func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: action) {
                        HStack {
                            Image(systemName: "chevron.left")
                            if let description = description {
                                Text(description)
                            }
                        }
                        .foregroundColor(color)
                    }
                }
            }
    }
}
