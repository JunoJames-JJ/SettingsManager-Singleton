# Settings Manager (Singleton Pattern)

A focused Swift example showing the **Singleton pattern** applied to app-wide settings management - a common, practical use case for Singletons in iOS development.

## The Problem This Solves

Many apps need a single, shared source of truth for user preferences (theme, notification settings, etc.) that's accessible from anywhere in the app, without passing it manually through every view controller. The Singleton pattern is a natural fit here: one instance, created once, shared everywhere.

## How It Works

```swift
class SettingsManager {
    static let shared = SettingsManager()

    var theme: String = "Light"
    var notificationsEnabled: Bool = true

    private init() { }
}
```

- `static let shared` creates a single, lazily-initialized instance the first time it's accessed.
- `private init()` prevents any other part of the app from creating a second instance - enforcing that `SettingsManager.shared` really is the *only* instance.
- Any view controller in the app can read or update settings through the same shared object:

```swift
class NewViewController: UIViewController {
    func updateSettings() {
        settings.notificationsEnabled = false
    }
}
```

Because every part of the app references the same `SettingsManager.shared` instance, a change made in one screen (like toggling notifications) is immediately reflected everywhere else that reads from it.

## Tech Stack

- Swift
- UIKit

## Why This Pattern Matters

Settings, configuration, and other app-wide state are one of the most common, legitimate use cases for the Singleton pattern - this example shows the pattern implemented correctly and safely, with a private initializer to guarantee a single source of truth.
