//
//  HomeHero.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct HomeHero: View {
    var body: some View {
        TabView {
            ForEach(players) {player in
                FeaturedItemView(player: player)
                    .padding(.horizontal, 15)
            }
            
        }
        .tabViewStyle(.page)
    }
}

struct HomeHero_Previews: PreviewProvider {
    static var previews: some View {
        HomeHero()
            .previewLayout(.sizeThatFits)
            .background(colorGray)
    }
}
