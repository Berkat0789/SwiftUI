//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/7/22.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: properties
    @State private var isAnimating: Bool = false
    //MARK: vody
    var body: some View {
        HStack {
            Button {
                print("pressed")
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } // End button
            
            Spacer()
            
            logoView()
                .scaleEffect(isAnimating ? 1 : 0)

            Spacer()
            
            Button {
                print("Cart pressed")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .trailing)
                        .offset(x: 13, y: -10)
                }
            } // End button
            
            
        } // End of hstack
        .onAppear {
            withAnimation(.linear(duration: 0.7)) {
                isAnimating = true
            }
        }
        .padding()
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
