//
//  HeroView.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct HeroView: View {
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.65), radius: 4, x: 3, y: 4)
                .scaleEffect(isAnimating ? 1 : 0)
        }
        .frame(height: 440, alignment: .center)
        .onAppear {
            withAnimation(.easeIn.speed(0.45)) {
                isAnimating = true
            }
        }
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(fruit: allFruits[0])
            .previewLayout(.fixed(width: 370, height: 450))
    }
}
