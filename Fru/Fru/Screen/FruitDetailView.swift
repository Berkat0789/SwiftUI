//
//  FruitDetailView.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/31/22.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 16) {
                    // Put header View here
                    HeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        //MARK: TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //MARK: Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .fontWeight(.medium)
                        
                        
                        //MARK: Nutrition
                        NutritionListView(fruit: fruit)
                        
                        //MARK: Description
                        Text(fruit.description)
                            .font(.headline)
                            .fontWeight(.light)
                        
                        
                        //MARK: Link
                        FruitWebLink()
                            .padding(.vertical, 20)
                        
                    } //Vstack - Detail Content goes here
                    .frame(maxWidth: 640)
                    .padding()
                    
                } // Main Vstack
                
            } // End Scroll View
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
            
        } // end navigation view
        .navigationViewStyle(.stack)

    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: Fruit.allFruits[8])
    }
}
