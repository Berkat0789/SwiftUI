//
//  StartButtonView.swift
//  Fruitz
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: properties
    
    //MARK: Body
    var body: some View {
        Button {
            print("Exit Onboarding ")
        } label: {
            HStack(spacing: 8) {
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                Text("Start")
            }
            .padding(8)
        }// Button
        .accentColor(.white)
        .background(
            Capsule()
                .strokeBorder(Color.white, lineWidth: 1.25)
        )

    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        
    }
}
