//
//  LinkView.swift
//  Fruity
//
//  Created by Berkat Bhatti on 7/21/22.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        GroupBox() {
            HStack{
                Link("Read More",destination: URL(string: "https://wikipedia.com")!)
                Spacer()
                Text("Wikipedia")
                    .fontWeight(.heavy)
                Image(systemName: "arrow.up.right.square")
                
            }
            .font(.footnote)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
