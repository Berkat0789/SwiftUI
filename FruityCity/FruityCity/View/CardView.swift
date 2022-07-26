//
//  CardView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct CardView: View {
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .center, spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.64), radius: 12, x: 4, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.45), radius: 6, x: 4, y: 3)
                
                Text(fruit.headline)
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                
                StartButton()
                
            }
            
        } // End Z stack
        .cornerRadius(12)
        .padding(.horizontal, 12)
        .onAppear {
            withAnimation(.easeIn(duration: 2)) {
                isAnimating = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: allFruits[5])
    }
}
