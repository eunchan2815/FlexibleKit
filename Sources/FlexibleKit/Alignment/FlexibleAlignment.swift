import SwiftUI

@available(iOS 13.0, *)
public extension View {
    func alignLeft() -> some View {
        HStack {
            self
            Spacer()
        }
    }
    
    func alignRight() -> some View {
        HStack {
            Spacer()
            self
        }
    }
    
    func alignCenter() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
