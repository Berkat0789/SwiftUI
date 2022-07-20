//
//  CardView.swift
//  FruitsAndAll
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimationg: Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0] , fruit.gradientColors[1] ], startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.35), radius: 6, x: 2, y: 2)
                    .scaleEffect(isAnimationg ? 1 : 0)
                    .animation(.linear(duration: 0.6), value: isAnimationg)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.35), radius: 3, x: 2, y: 2)
                    .multilineTextAlignment(.center)
                
                Text(fruit.headline)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(10)
                
                ButtonView()
                
            } // ENd V
            
        } // End Z stack
        .cornerRadius(20)
        .padding(8)
        .onAppear {
            withAnimation(.easeIn) {
                isAnimationg = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: FruitData[5])
    }
}
