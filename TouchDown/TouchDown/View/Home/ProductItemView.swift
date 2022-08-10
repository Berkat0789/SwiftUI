//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Image
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .background(Color(red: product.red, green: product.green, blue: product.blue))
                    .cornerRadius(12)
            } // End Zstack
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)

            
            
            //Price
        } // End Vstack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[2])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorGray)
    }
}
