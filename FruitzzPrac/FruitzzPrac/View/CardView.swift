//
//  CardView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/19/22.
//

import SwiftUI

struct CardView: View {
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            VStack(spacing: 10) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimating)
                    .shadow(color: .black.opacity(0.4), radius: 6, x: 2, y: 2)
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.12), radius: 12, x: 6, y: 4)
                Text(fruit.headline)
                    .font(.headline)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .shadow(color: .black.opacity(0.4), radius: 12, x: 6, y: 4)
                    .multilineTextAlignment(.center)
                    .padding()
                StartButton()
                
            } // End  Vstack
            
        } // End Zstack
        .cornerRadius(20)
        .padding(16)
        .onAppear {
            isAnimating = true
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: Fruit.fruitData[6])
    }
}
