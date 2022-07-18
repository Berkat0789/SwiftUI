//
//  CardView.swift
//  Fruitz
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct CardView: View {
    //MARK: PRoperties
    
    @State private var isAnimation: Bool = false
    
    //MARK: Body
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("ColorBlueberryDark"), Color("ColorBlueberryLight")], startPoint: .top, endPoint: .bottom)
            VStack(spacing: 20) {
                //fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 6)
                    .scaleEffect(isAnimation ? 1 : 0)
                    .animation(.linear(duration: 0.75), value: isAnimation)
                // Card Tittle
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.4), radius: 2, x: 2, y: 2)
                
                //HeadLine
                Text("Blueberry are sweet nutritions and polular all over the world")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button
                StartButtonView()
                
                
                
            } // End Vstack
        } // End Zstack
        .cornerRadius(20)
        .padding(.horizontal, 10)
        .onAppear {
            withAnimation(.easeIn) {
                isAnimation = true
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/320.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/640.0/*@END_MENU_TOKEN@*/))
    }
}
