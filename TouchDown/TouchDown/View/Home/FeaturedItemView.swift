//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[3])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
    }
}
