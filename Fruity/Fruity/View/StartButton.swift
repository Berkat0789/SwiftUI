//
//  StartButton.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct StartButton: View {
    @AppStorage(AppStorageConstants.isOnboardnig.rawValue) var isOnboarding: Bool = true
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 10) {
                Image(systemName: "photo.circle.fill")
                    .foregroundColor(.white)
                    .imageScale(.large)
                Text("Start")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
            }
            .padding(30)
        }// End Button
        .background(
            Capsule().strokeBorder(.white, lineWidth: 3)
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
