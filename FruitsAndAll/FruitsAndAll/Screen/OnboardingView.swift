//
//  OnboardingView.swift
//  FruitsAndAll
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(FruitData[0..<5]) { fruit in
                CardView(fruit: fruit)
            }
        }// End Tab
        .tabViewStyle(.page)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        
        OnboardingView()
    }
}
