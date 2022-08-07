//
//  HeroView.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/5/22.
//

import SwiftUI

struct HeroView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                .scaledToFill()
            }
        }// End of Tab
        .tabViewStyle(.page)
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
