//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItem(brand: brand)
                }
            } // end grid
            .frame(height: 200, alignment: .leading)
            .padding(15)
        } // End Scroll
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorGray)
    }
}
