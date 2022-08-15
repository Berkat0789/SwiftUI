//
//  SmallVerticalButton.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/15/22.
//

import SwiftUI

struct SmallVerticalButton: View {
    //MARK: properties
    var text: String
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var imageName: String {
        isOn ? isOnImage : isOffImage
    }
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: imageName)
                Text(text)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
        }

    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false, action: {
            print("tapped")
        })
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
