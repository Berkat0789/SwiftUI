//
//  QuantityFavoriteDetailGroup.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/12/22.
//

import SwiftUI

struct QuantityFavoriteDetailGroup: View {
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
        
            Button {
                if counter < 100 {
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                print("Liked")
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

            

        } // End of Hastck
        .font(.system(.title))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailGroup_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailGroup()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
