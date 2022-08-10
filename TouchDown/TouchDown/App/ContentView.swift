//
//  ContentView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 0) {
                NavigationBarView()
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.25), radius: 4, x: 3, y: 2)
                    .padding(.top, scenes?.windows.first?.safeAreaInsets.top)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center, spacing: 0) {
                        HomeHero()
                            .padding()
                            .frame(height: 230, alignment: .center)
                        
                        TitleView(title: "Items")
                        
                        LazyVGrid(columns: gridLayout) {
                            ForEach(products) { prod in
                                NavigationLink(destination: ProductDetailView(product: prod)) {
                                    ProductItemView(product: prod)
                                }
                            }
                        }
                        .padding()
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } // End sVstack
                } //End of scroll
           
            }
        }// End z stack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
