//
//  StartButton.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct StartButton: View {
    @AppStorage(StorageConstants.isOnboarding.rawValue) var isOb: Bool?
    var body: some View {
        Button {
            isOb = false
        } label: {
            // inside button
            HStack(spacing: 15) {
                Image(systemName: "camera.fill")
                    .imageScale(.large)
                    .foregroundColor(.white)
                
                Text("Start")
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
            }
            .padding(30)
        }//end button
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 3)
        )
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
