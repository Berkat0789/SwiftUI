//
//  FruitCell.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/20/22.
//

import SwiftUI

struct FruitCell: View {
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
                .frame(height: 160, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 12, x: 2, y: 2)
                .cornerRadius(12)
            HStack {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .black.opacity(0.4), radius: 6, x: 2, y: 2)
                VStack(alignment: .leading, spacing: 4) {
                    Text(fruit.title)
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .shadow(color: .black.opacity(0.5), radius: 7, x: 2, y: 2)
                        .multilineTextAlignment(.leading)
                    
                }// Vstack
                .padding()
            }
            
        }
    }
}

struct FruitCell_Previews: PreviewProvider {
    static var previews: some View {
        FruitCell(fruit: Fruit.fruitData[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
