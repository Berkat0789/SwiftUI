//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: properties
    
    @State private var isAnimating = false
    let product: Product
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // Price
            VStack(alignment: .leading, spacing: 5) {
                Text(product.formattedPrice)
                    .fontWeight(.semibold)
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.45 , anchor: .leading)
            } // Price VStack
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)

            
            
            //Image
        } // End of Hastack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
