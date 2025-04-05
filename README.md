<p align="leading">
  <img src="https://img.shields.io/badge/Swift-5.5%205.6%205.7%205.8-green.svg" />
  <img src="https://img.shields.io/badge/Platforms-iOS-lightgrey.svg" />
  <img src="https://img.shields.io/badge/Swift_Package_Manager-compatible-orange.svg" />
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" />
</p>

> SwiftUI is great. But layout isn't.

**FlexibleKit** is a SwiftUI utility library that offers flexible layouts, custom back buttons, adaptive corners, triggers, and lightweight webviews. Easily drop into any SwiftUI project to speed up development.

---

## 🖼 Preview

<img src="https://github.com/user-attachments/assets/a3e9fcdf-fdd3-4160-8c44-75027e008186" width="100%" align="leading" />

---

## 📦 Installation

### Swift Package Manager

**Xcode:**


Paste:


**Or use `Package.swift`:**

```swift
.package(url: "https://github.com/YourUsername/FlexibleKit.git", .upToNextMajor(from: "1.0.1"))
```

## ✅ Features

### 📐 Alignment

간단한 정렬 기능을 제공합니다. 좌측, 우측, 중앙 정렬을 HStack 기반으로 구현되어 있습니다.

```swift
Text("왼쪽 정렬")
    .alignLeft()

Text("오른쪽 정렬")
    .alignRight()

Text("중앙 정렬")
    .alignCenter()
```

### 🔙 Back Button

유연한 SwiftUI BackButton을 제공합니다. 색상과 설명, 액션을 쉽게 설정할 수 있습니다.

```swift
struct TestView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            Text("hello")
        }
        .backButton(description: "뒤로가기", color: .black) {
            dismiss()
        }
    }
}
```

### 🎯 Rounded Corners

특정 코너만 라운딩할 수 있도록 도와주는 유틸입니다. .topLeft, .bottomRight 등 선택적으로 적용 가능합니다.

```swift
struct TestView: View {
    var body: some View {
        VStack {
            Text("hello")
                .frame(width: 300, height: 300)
                .background(.red)
                .roundedCorners(30, corners: [.topLeft, .bottomLeft, .bottomRight])
        }
    }
}
```

### 📦 Flexible Stacks

FlexibleHStack, FlexibleVStack을 통해 패딩과 정렬이 포함된 스택을 쉽게 만들 수 있습니다.
```swift
FlexibleHStack(spacing: 12, paddingEdges: [.leading, .trailing]) {
    Text("아이템 1")
    Text("아이템 2")
}

FlexibleVStack(alignment: .center, paddingLength: 8) {
    Text("위")
    Text("아래")
}

```

### ⏱ Trigger Delay

일정 시간 후 상태를 바꾸는 트리거 유틸입니다. Binding<Bool>을 일정 시간 이후 true로 변경합니다.
```swift
struct LaunchView: View {
    @State private var isActive = false

    var body: some View {
        Group {
            if isActive {
                TestView2()
            } else {
                VStack {
                    Text("🚀 FlexibleKit")
                        .font(.largeTitle.bold())
                    Text("Launching...")
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .delayedTrigger(to: $isActive, after: 2)
            }
        }
    }
}
```

### 🌐 WebView

SwiftUI에서 간단하게 WKWebView를 띄우고 싶을 때 사용합니다. URL만 넘기면 됩니다.
```swift
FlexibleWebView(url: "https://apple.com")
```
