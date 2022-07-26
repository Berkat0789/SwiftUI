//
//  CardView.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct CardView: View {
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.14), radius: 6, x: 2, y: 2)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
            VStack(spacing: 12){
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.4), radius: 6, x: 2, y: 2)
                    .scaleEffect(isAnimating ? 1 : 0)
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.13), radius: 12, x: 3, y: 3)
                Text(fruit.headline)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                //Button
                StartButton()
                    .padding()
            }//endVstack
            .padding()
        } // End Zstack
        .onAppear {
            withAnimation(.easeIn.speed(0.5)) {
                isAnimating = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: allFruits[4])
    }
}
