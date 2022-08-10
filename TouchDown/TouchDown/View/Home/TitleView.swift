//
//  TitleView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import SwiftUI

struct TitleView: View {
    
    //MARK: properteis
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            
        }// End Hstack
        .padding()
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Halmet")
            .previewLayout(.sizeThatFits)
            .background(colorGray)
    }
}
