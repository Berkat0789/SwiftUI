//
//  SettingsView.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/31/22.
//

import SwiftUI

struct SettingsView: View {
    //light mode
    //timezone etc
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
                
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //Section 1
                    GroupBox {
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .cornerRadius(12)
                            
                            Text("Hello there we ar not working n this anymore because it is geting too easy,    muahahahahahahahhahahahahhahahahhahahahahaah krngk inrginrignirngirnggrtinrg")
                                .font(.footnote)
                           
                        }
                    } label: {
                        SettingsLabelView(labelText: "frutose".uppercased(), labelImage: "info.circle")
                    }

                    
                    //section 2
                    
                    GroupBox {
                        HStack {
                            
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Jane, Jane")
                            
                            
                        }
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                    
                    
                    //Section 3
                    
                } // Main Vstack
                
            } // End Scroll View
            .navigationTitle("Settings")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
            })
            .navigationBarTitleDisplayMode(.large)
            
            
        }// End Navigation view
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
    }
}
