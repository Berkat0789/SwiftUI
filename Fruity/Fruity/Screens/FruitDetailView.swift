//
//  FruitDetailView.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    HeroView(fruit: fruit)
                        VStack(alignment: .leading, spacing: 20){
                            //TITLE
                            Text(fruit.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(fruit.gradientColors[1])
                            //Headline
                            Text(fruit.headline)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            
                            // Nutrition
                            NutritionDetailsView(fruit: fruit)
        
                            
                            //Sub HEading
                            Text("Learn More about \(fruit.title)".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(fruit.gradientColors[1])
                            
                            // Description
                            Text(fruit.description)
                                .multilineTextAlignment(.leading)
                            
                            LinkView()
                            
                        }// End Vstgack
                        .padding()
               
                }// OCntent Hstack
            }
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: allFruits[7])
    }
}
