//
//  SourceLinkView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/20/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Source")
                    .foregroundColor(Color.orange)
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }// GroupBox
        .font(.footnote)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
