//
//  FruitHeaderView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    @State private var isAnimationg: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.35), radius: 10, x: 4, y: 3)
                .scaleEffect(isAnimationg ? 1 : 0)
            
        } // End z stack
        .onAppear {
            withAnimation(.linear(duration: 2.0)) {
                isAnimationg = true
            }
        }
        
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: allFruits[3])
            .previewLayout(.fixed(width: 350, height: 450))
    }
}
