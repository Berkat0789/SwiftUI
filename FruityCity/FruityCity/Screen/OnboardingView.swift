//
//  OnboardingView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(allFruits[0..<5]) {fruit in
                CardView(fruit: fruit)
            }
        }// End tab
        .tabViewStyle(.page)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
