//
//  HeadingView.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct HeadingView: View {
    
    var image: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(text)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(image: "photo.on.rectangle.angled", text: "wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
