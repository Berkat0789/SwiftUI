//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: properties
    private let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //Nav Bar
            NavigationBarDetailBar()
                .padding(.horizontal)
                .padding(.top, scene?.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
            
            //Detail Top Bar
            TopPartDetailView(product: product)
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom part
            VStack(alignment: .center, spacing: 0) {
                
                //Ratings + Sizes
                RathingSizesDetailView()
                    .padding(.top, -40)
                    .padding(.bottom, 10)
                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } // End of scrolling view
                
                
                // Quantity + Favorite
                
                
                // Add to cart
                Spacer()
            }
            .padding()
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -90)
            )
            
          
            
        } // End of VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: product.red,
                green: product.green,
                blue: product.blue
            ).ignoresSafeArea(.all, edges: .all)
            
        )
        .zIndex(0)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: sampleProduct)
            .previewLayout(.fixed(width: 370, height: 812))
    }
}
