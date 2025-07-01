# 🎨 DesignSystemKit

**DesignSystemKit** is a modular SwiftUI library for sharing a consistent design system across all iOS apps. It includes reusable components, a scalable color palette, typographic styles, spacing tokens, visual modifiers, previews, and more.

---

## 🚀 Installation

### Swift Package Manager (SPM)

Add this repo URL to your Xcode project:


Or in `Package.swift`:

```swift
.package(url: "https://github.com/medaminenajjar/DesignSystemKit.git", from: "1.0.0")


## 📦 What’s Inside
🎨 Colors – Named colors with light/dark mode support (ColorPalette)

🔤 Fonts – Typographic styles (Typography)

📏 Spacing / Foundation – Design tokens for padding, corner radius, duration, etc.

📦 Components – Custom views like cards, tags, empty states, skeletons…

👆 Buttons – Stylish reusable buttons (PrimaryButton, DestructiveButton)

🪄 Modifiers – Reusable ViewModifiers (glassBackground(), primaryCard())

🧪 Previews – Visual preview files for rapid design iteration

## 🧱 Usage Examples
### Colors
Text("Hello world")
    .foregroundColor(ColorPalette.primary)

### Buttons
PrimaryButton("Submit") {
    print("Tapped")
}

### Skeleton View
SkeletonView(height: 24, width: 200)
    .shimmer()

### Empty State
EmptyStateView(
    title: "Nothing here",
    message: "You haven't added anything yet.",
    imageName: "tray",
    actionText: "Add Item",
    action: { ... }
)

### AlertBanner
AlertBanner("Something went wrong. Please try again.")

### CardView
CardView {
    VStack(alignment: .leading) {
        Text("Title").font(Typography.headline)
        Text("This is a reusable card view.")
    }
}

### GlassCard
GlassCard {
    VStack(spacing: 8) {
        Text("Glass Look")
            .font(Typography.title)
            .foregroundColor(.white)
        Text("Modern translucent card component.")
            .font(Typography.body)
            .foregroundColor(.white.opacity(0.85))
    }
}

## 📚 Contributing
Want to contribute a new component or improvement?

Fork the repo

Create a feature branch

Open a pull request ✨

👤 Author
Maintained by @amine Design inspired by Apple's Human Interface Guidelines
