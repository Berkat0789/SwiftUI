//
//  NutritionDetailsView.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct NutritionDetailsView: View {
    var fruit: Fruit
    let nutrientsTitle = ["Energy", "Sugar", "fats", "protein","vitamins","minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Valiue / 100 g") {
                ForEach(0..<nutrientsTitle.count, id: \.self) { index in
                    Divider()
                    HStack {
                        Group {
                            HStack {
                                Image(systemName: "info.circle")
                                Text(nutrientsTitle[index])
                            }
                            .foregroundColor(fruit.gradientColors[1])
                            .font(.body.bold())
                        }
                        Spacer()
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)

                    }
                }
            }
        }
    }
}

struct NutritionDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionDetailsView(fruit: allFruits[4])
            .previewLayout(.fixed(width: 340, height: 350))
    }
}
