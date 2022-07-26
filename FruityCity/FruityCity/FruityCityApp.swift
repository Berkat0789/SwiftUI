//
//  FruityCityApp.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

enum StorageConstants: String {
    case isOnboarding = "isOnboarding"
}

@main
struct FruityCityApp: App {
    
    @AppStorage(StorageConstants.isOnboarding.rawValue) var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
