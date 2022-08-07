//
//  fruitCell.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/30/22.
//

import SwiftUI

struct fruitCell: View {
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
            
            HStack(alignment: .center, spacing: 10) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 4, x: 3, y: 2)
                //Details
                VStack(alignment: .leading, spacing: 12) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    
                    //Headline
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }
            }// End Hstack
            .padding()
            
        }// End Xstack
        .frame(height: 140, alignment: .center)
        .cornerRadius(23)
    }
}

struct fruitCell_Previews: PreviewProvider {
    static var previews: some View {
        fruitCell(fruit: Fruit.allFruits[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
