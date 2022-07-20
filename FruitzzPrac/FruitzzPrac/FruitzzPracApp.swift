//
//  FruitzzPracApp.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/19/22.
//

import SwiftUI

enum StorageProperties: String{
    case onboarding = "isOnboarding"
}

@main
struct FruitzzPracApp: App {
    @AppStorage(StorageProperties.onboarding.rawValue) var isOnboarding = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                onboardingView()
            } else {
                ContentView()
            }
        }
    }
}
