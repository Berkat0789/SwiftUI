//
//  FruitDetailView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    FruitHeaderView(fruit: fruit)
                } // Main Vstack
                
                //Content VStack
                VStack(alignment: .leading, spacing: 20) {
                    Text(fruit.title)
                        .font(.largeTitle)
                        .foregroundColor(fruit.gradientColors[1])
                        .fontWeight(.heavy)
                    
                    Text(fruit.headline)
                        .font(.headline)
                    
                    NutritionView(fruit: fruit)
                    
                    Text(fruit.description)
                    
                    FruitLink()
                    
                }
                .padding(.horizontal, 12)
            }// End Scroll
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)

            
        }// End Navigation View
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: allFruits[4])
    }
}
