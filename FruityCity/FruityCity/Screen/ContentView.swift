//
//  ContentView.swift
//  FruityCity
//
//  Created by Berkat Bhatti on 7/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(allFruits) {fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitCell(fruit: fruit)
                    }
                }
            }//End list
            .navigationTitle("Fruit List")
            .navigationViewStyle(.stack)
            .listStyle(.plain)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
        } // End Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
