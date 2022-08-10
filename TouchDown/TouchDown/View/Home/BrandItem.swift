//
//  BrandItem.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct BrandItem: View {
    
    //MARK: properties
    
    let brand: Brand
    
    var body: some View {
        ZStack {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(Color.white)
                .background(
                    RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 4)
                )
        }
    }
}

struct BrandItem_Previews: PreviewProvider {
    static var previews: some View {
        BrandItem(brand: brands[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
