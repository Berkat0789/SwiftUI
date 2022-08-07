//
//  ContentView.swift
//  Fru
//
//  Created by Berkat Bhatti on 7/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSetting = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Fruit.allFruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        fruitCell(fruit: fruit)
                    } // Navigation Link
                }
                
            } // End list
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSetting = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .imageScale(.large)
                    }
                    .sheet(isPresented: $isShowingSetting) {
                        SettingsView()
                    }

                }
            }
        
        } // End navigation
        .navigationViewStyle(.stack)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
