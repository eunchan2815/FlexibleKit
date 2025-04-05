import SwiftUI
import WebKit

@available(iOS 14.0, *)
public struct FlexibleWebView: UIViewRepresentable {
    public let url: String

    public init(url: String) {
        self.url = url
    }

    public func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()

        if let validUrl = URL(string: url) {
            let request = URLRequest(url: validUrl)
            webView.load(request)
        } else {
            print("error")
        }

        return webView
    }

    public func updateUIView(_ uiView: WKWebView, context: Context) {}
}
