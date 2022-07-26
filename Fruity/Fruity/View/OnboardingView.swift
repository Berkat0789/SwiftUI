//
//  OnboardingView.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(allFruits) {fruit in
                CardView(fruit: fruit)
            }
        }
        .tabViewStyle(.page)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
