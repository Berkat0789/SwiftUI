//
//  NavigationBarDetailBar.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct NavigationBarDetailBar: View {
    var body: some View {
        HStack {
            Button {
                print("Back Pressed")
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

            
            Spacer()
            
            Button {
                print("Back Pressed")
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            
        } // End of Hstack
    }
}

struct NavigationBarDetailBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailBar()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorGray)
    }
}
