//
//  SwiftRowView.swift
//  FruitsAndAll
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct SwiftRowView: View {
    //MARK: prperties
    var fruit: Fruit
    
    //MARK: body
    var body: some View {
        HStack(spacing: 16) {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.3), radius: 2, x: 2, y: 2)
                .frame(width: 90, height: 90, alignment: .leading)
                .background(
                    LinearGradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]], startPoint: .top, endPoint: .bottom)
                        .cornerRadius(45)
                )
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                Text(fruit.headline)
                    .font(.caption)
                    .fontWeight(.light)
                    
            }
            .padding(.horizontal, 10)
        }
        .cornerRadius(10)
    }
}

struct SwiftRowView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftRowView(fruit: FruitData[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
