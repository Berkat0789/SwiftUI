//
//  CardView.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/30/22.
//

import SwiftUI

struct CardView: View {
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            VStack(spacing:15) {
                // Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1 : 0)
                    .shadow(color: .black.opacity(0.4), radius: 4, x: 3, y: 2)
                    
                
                // Title
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 3, y: 2)
                //Headline
                
                Text(fruit.headline)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                RoundedButton()
            }
            
         
        } // End Zstack
        .cornerRadius(16)
        .padding(.horizontal, 10)
        .onAppear {
            withAnimation(.linear(duration: 1)) {
                isAnimating = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: Fruit.allFruits[5])
    }
}
