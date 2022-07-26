//
//  FruityApp.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI


enum AppStorageConstants: String {
    case isOnboardnig = "isOnboarding"
}
@main
struct FruityApp: App {

    @AppStorage(AppStorageConstants.isOnboardnig.rawValue) var isOnboarding: Bool = true
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
