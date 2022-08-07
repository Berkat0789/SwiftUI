//
//  OnboardingScreen.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/30/22.
//

import SwiftUI

struct OnboardingScreen: View {
    var body: some View {
        TabView {
            ForEach(Fruit.allFruits[0..<5]) { fruit in
                CardView(fruit: fruit)
            }
            
        } // End tab
        .tabViewStyle(.page)
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
