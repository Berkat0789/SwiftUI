//
//  FruitCell.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct FruitCell: View {
    var fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
                .cornerRadius(12)
                .padding(10)
            HStack {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .black.opacity(0.35), radius: 6, x: 2, y:3)
                VStack(alignment: .leading, spacing: 12) {
                    Text(fruit.title)
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .shadow(color: .black.opacity(0.15), radius: 6, x: 2, y: 2)
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }// End Vstack
            }
            .navigationTitle("Fruits")
            .padding()
            
        } // End Zstack
    }
}

struct FruitCell_Previews: PreviewProvider {
    static var previews: some View {
        FruitCell(fruit: allFruits[5])
            .previewLayout(.fixed(width: 350, height: 140))
    }
}
