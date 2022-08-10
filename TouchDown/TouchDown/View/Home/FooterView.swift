//
//  FooterView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct FooterView: View {
    //MARK: properties

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("WE offer the most cutting edge helmets at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            
            Image("logo-lineal")
                .foregroundColor(.gray)
            
            
            Text("Copyright © Berkat Bhatti - All rights reserved 2022")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } // End of v stack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
    }
}
