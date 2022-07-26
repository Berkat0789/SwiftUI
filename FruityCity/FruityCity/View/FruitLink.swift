//
//  FruitLink.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct FruitLink: View {
    var body: some View {
        GroupBox {
            Link(destination: URL(string: "https://google.com")!) {
                HStack {
                    Text("Google Search")
                        .fontWeight(.heavy)
                    Spacer()
                    HStack {
                        Text("Read More")
                            .fontWeight(.medium)
                        Image(systemName: "camera.fill")
                    }
                }

            }
        }
    }
}

struct FruitLink_Previews: PreviewProvider {
    static var previews: some View {
        FruitLink()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
