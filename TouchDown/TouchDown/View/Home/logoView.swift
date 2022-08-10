//
//  logoView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct logoView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        } // End of hstaclk
    }
}

struct logoView_Previews: PreviewProvider {
    static var previews: some View {
        logoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
