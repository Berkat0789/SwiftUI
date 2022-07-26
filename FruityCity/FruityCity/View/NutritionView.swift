//
//  NutritionView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct NutritionView: View {
    
    var fruit: Fruit
    
    var nutritionValues = ["Fats","Calories","Sodium","Potassium","Zinc"]
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrition Facts /100g".capitalized) {
                VStack {
                    ForEach(0..<nutritionValues.count, id: \.self) {index in
                        Divider()
                        HStack {
                            HStack {
                                Image(systemName: "info.circle")
                                    .foregroundColor(fruit.gradientColors[1])
                                Text(nutritionValues[index])
                                    .foregroundColor(fruit.gradientColors[1])
                            }
                            Spacer()
                            Text(fruit.nutrition[index])

                        }
                        
                    }
                } // vstack LEvt
            }
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView(fruit: allFruits[5])
            .previewLayout(.fixed(width: 350, height: 450))
    }
}
