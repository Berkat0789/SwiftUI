//
//  ButtonView.swift
//  FruitsAndAll
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct ButtonView: View {
    
    @AppStorage(userDefaults.isOnboarding.rawValue) var isONboarding: Bool = true
    var body: some View {
        Button {
            isONboarding = false
        } label: {
            HStack(spacing: 20) {
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundColor(.white)
                Text("Start")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
            }
            .padding(15)
        } // End Button
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 3)
        )

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
