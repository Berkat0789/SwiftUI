//
//  OnboardingView.swift
//  Fruitz
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: properties
    
    //MARK: Body
    
    
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                CardView()
            }
        }//TABView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}


//MARK: PReview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
