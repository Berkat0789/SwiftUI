//
//  FruitsAndAllApp.swift
//  FruitsAndAll
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

enum userDefaults: String {
    case isOnboarding = "isOnboarding"
}

@main
struct FruitsAndAllApp: App {
    @AppStorage(userDefaults.isOnboarding.rawValue) var isOnboarding: Bool = true
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
