//
//  FruitCell.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct FruitCell: View {
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            HStack(alignment: .center, spacing: 12) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90, alignment: .center)
                    .shadow(color: .black, radius: 0.35, x: 3, y: 4)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.white)
                    
                }
                
                
            }
            
        } // End Zstack
        .cornerRadius(15)
        .frame(height: 130, alignment: .center)
        
    }
}

struct FruitCell_Previews: PreviewProvider {
    static var previews: some View {
        FruitCell(fruit: allFruits[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
