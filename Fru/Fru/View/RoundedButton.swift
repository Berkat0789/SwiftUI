//
//  RoundedButton.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/30/22.
//

import SwiftUI

struct RoundedButton: View {
    var body: some View {
        Button {
            print("Button Pressed")
        } label: {
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "photo.fill")
                    .imageScale(.large)
                    .foregroundColor(.white)
                
                Text("Start")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
            }
            .padding()
        }// End buttong
        .background(
            Capsule().strokeBorder(.white, lineWidth: 4)
        )

    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
