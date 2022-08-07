//
//  HeaderView.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/31/22.
//

import SwiftUI

struct HeaderView: View {
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.24), radius: 4, x: 2, y: 2)
                .scaleEffect(isAnimating ? 1 : 0)
            
        } // End Zstsck
        .onAppear {
            withAnimation(.linear(duration: 1)) {
                isAnimating = true
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(fruit: Fruit.allFruits[1])
            .previewLayout(.fixed(width: 340, height: 440))
    }
}
