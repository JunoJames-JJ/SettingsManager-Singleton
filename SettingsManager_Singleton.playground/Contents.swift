import UIKit

class SettingsManager {
    
    static let shared =  SettingsManager()
    
    var theme: String = "Light"
    var notificationsEnabled: Bool = true
    
    private init () { }
}

let settings = SettingsManager.shared
settings.theme = "Dark"
print(settings.theme)

class NewViewController: UIViewController {
    func updateSettings() {
        settings.notificationsEnabled = false
    }
}
