//
//  NutritionView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/20/22.
//

import SwiftUI

struct NutritionView: View {
    
    //Properties
    var fruit: Fruit
    let nutrientsTitle = ["Energy", "Sugar", "fats", "protein","vitamins","minerals"]
    // Body
    var body: some View {
        GroupBox {
            DisclosureGroup("nutrition Value 100g") {
                ForEach(0..<nutrientsTitle.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            HStack {
                                Image(systemName: "info.circle")
                                Text(nutrientsTitle[index])
                            }
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.body.bold())
                        }
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView(fruit: Fruit.fruitData[6])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 450))
            .padding()
    }
}
