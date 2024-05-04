//
//  ChatUiAppApp.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//

import SwiftUI
import Firebase

@main
struct ChatUiAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
