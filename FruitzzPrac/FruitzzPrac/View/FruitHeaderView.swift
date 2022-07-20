//
//  FruitHeaderView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/20/22.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 6, x: 6, y: 8)
                .padding(.vertical, 8)
                .scaleEffect(isAnimating ? 1: 0.6)
            
        } // End Zstack
        .frame(height: 440, alignment: .center)
        .onAppear {
            withAnimation(.easeOut(duration: 1)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: Fruit.fruitData[7])
            .previewLayout(.fixed(width: 374, height: 440))
    }
}
