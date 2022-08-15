//
//  AddtoCart.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/12/22.
//

import SwiftUI

struct AddtoCart: View {
    var body: some View {
        Button {
            print("Add to cart")
        } label: {
            Spacer()
            Text("Add to cart")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Spacer()
        } // End of button
        .padding()
        .background(
            Color(.sRGB, red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(Capsule())

    }
}

struct AddtoCart_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCart()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
