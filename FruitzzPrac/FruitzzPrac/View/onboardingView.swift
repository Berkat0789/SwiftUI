//
//  onboardingView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/19/22.
//

import SwiftUI

struct onboardingView: View {
    
    
    var body: some View {
        TabView {
            ForEach(Fruit.fruitData[0..<5]) { fruit in
                CardView(fruit: fruit)
            }
            
        }
        .tabViewStyle(.page)
    }
}

struct onboardingView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingView()
    }
}
