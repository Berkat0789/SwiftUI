//
//  FruitsDetailView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/20/22.
//

import SwiftUI

struct FruitsDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    //Header
                    FruitHeaderView(fruit: fruit)
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
                        NutritionView(fruit: fruit)
                        
                        //Sub HEading
                        Text("Learn More about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //LInk
                        SourceLinkView()
                            .padding(.bottom, 40)
                    }//EndVstack
                    .padding(.horizontal, 10)
                    .frame(maxWidth: 640, alignment: .center)
                } // Main Vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // Scrolll VIew
            .edgesIgnoringSafeArea(.top)
        } // Navigation
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: Fruit.fruitData[5])
            .preferredColorScheme(.light)
    }
}
