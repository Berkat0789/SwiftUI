//
//  PlayButton.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/15/22.
//

import SwiftUI

struct WhiteButton: View {
     //MARK: properties
    
    var buttonText: String
    var imageName: String
    var buttonHeight: CGFloat
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Color.white
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                HStack {
                    Spacer()
                    Image(systemName: imageName)
                        .imageScale(.large)
                        .font(.system(size: 20))
                    Text(buttonText)
                        .font(.title2)
                        .fontWeight(.heavy)
                    Spacer()
                }
                .foregroundColor(.black)
            }
            .frame(height: buttonHeight, alignment: .center)
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton(buttonText: "Play", imageName: "play.fill", buttonHeight: 60, action: {
            print("Play Tapped")
        })
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
