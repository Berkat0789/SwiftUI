//
//  DetailView.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct DetailView: View {
    
    let animal: Animal
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    // Hero Image
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                    
                    //Title
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                        .background(
                            Color.accentColor
                                .frame(height: 6, alignment: .center)
                                .offset(y: 24)
                        )

                    // Headline
                    
                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                    
                    //Gallery
                    Group {
                       HeadingView(image: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
                       InsetGalleryView(animal: animal)
                    }
                    .padding()
                    //Facts
                    
                    //Description
                    
                    // Map
                    
                    
                    // Link
                } // main VStack
            } // End scroll
            .navigationBarHidden(true)
            .navigationTitle("Learn about \(animal.name)")

        } // navigation View
        .navigationViewStyle(.stack)
    }
}

struct DetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        DetailView(animal: animals[0])
    }
}
