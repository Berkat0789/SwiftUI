//
//  NutritionListView.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/31/22.
//

import SwiftUI

struct NutritionListView: View {
    var fruit: Fruit
    private let nutritionTitles = ["Protein", "Zinc", "Chol", "Carbs", "Fats"]
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrition value /100g".capitalized) {
                ForEach(0..<nutritionTitles.count, id: \.self) { index in
                    Divider()
                    HStack {
                        
                        HStack(spacing: 10) {
                            Image(systemName: "info.circle")
                                .foregroundColor(fruit.gradientColors[1])
                            Text(nutritionTitles[index])
                                .foregroundColor(fruit.gradientColors[1])
                        }// Nutrition titles and icons
                        Spacer()
                        //Nutrition values
                        Text(fruit.nutrition[index])
                        
                    } // Hstack for all content
                    .font(.footnote)
                    
                    
                } // Main Stack
            }
        }
    }
}

struct NutritionListView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionListView(fruit: Fruit.allFruits[1])
            .previewLayout(.fixed(width: 200, height: 300))
    }
}
