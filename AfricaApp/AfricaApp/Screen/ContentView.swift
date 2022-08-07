//
//  ContentView.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [Animal] = Bundle.main
        .decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                HeroView()
                    .frame(height: 280)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                  AnimalCellView(animal: animal)
                }
            }
            .navigationTitle("Africa")
        } //end navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
