//
//  InsetGalleryView.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id:\.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200, alignment: .center)
                    .cornerRadius(12)
                }
            }// End hstack
            
        } // End Scroll
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[5])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
