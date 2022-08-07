//
//  FruitWebLink.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/31/22.
//

import SwiftUI

struct FruitWebLink: View {
    var body: some View {
        GroupBox {
            Link(destination: URL(string: "https://google.com")!) {
                HStack(alignment: .center, spacing: 12) {
                    HStack {
                        Image(systemName: "info.circle")
                            .imageScale(.large)
                        Text("More info")

                    } // Left components
                    
                    Spacer()
                    
                    HStack{
                        Text("Google Article")
                        Image(systemName: "arrow.right.square")
                            .imageScale(.large)
                    } // Right stack
                    
                } // Main hstack
                
            } // Link
            
        }// Group Box
    }
}

struct FruitWebLink_Previews: PreviewProvider {
    static var previews: some View {
        FruitWebLink()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
