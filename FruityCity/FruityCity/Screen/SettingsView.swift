//
//  SettingsView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/28/22.
//

import SwiftUI

struct SettingsView: View {
    // Properties
    @Environment(\.presentationMode) var presentationMode
    
    //Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } // End main V Stack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
                
            } // End of scroll
        } // End of navigation
    }
}

// PReview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
