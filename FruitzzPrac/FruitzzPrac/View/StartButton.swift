//
//  StartButton.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/19/22.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage(StorageProperties.onboarding.rawValue) var isOnboarding: Bool?

    var body: some View {
        HStack {
            Image(systemName: "photo.circle.fill")
                .imageScale(.large)
                .foregroundColor(.white)
                .padding()
            Text("Start")
                .font(.title)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            
        }//End zstack
        .background(
            Capsule()
                .strokeBorder(Color.white, lineWidth: 3)
        )
        .shadow(color: .black.opacity(0.14), radius: 23, x: 3, y: 3)
        .padding()
        .onTapGesture {
            isOnboarding = false
        }
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
