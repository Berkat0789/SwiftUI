//
//  AnimalCellView.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/5/22.
//

import SwiftUI

struct AnimalCellView: View {
    
    var animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 10) {
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                

                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }// End vstack
        } // End hstack
    }
}

struct AnimalCellView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalCellView(animal: animals[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
