//
//  ContentView.swift
//  FruitzzPrac
//
//  Created by Berkat Bhatti on 7/19/22.
//

import SwiftUI


struct ContentView: View {
    
    @AppStorage(StorageProperties.onboarding.rawValue) var isOnboarding: Bool?
    

    var body: some View {
        NavigationView {
            List {
                ForEach(Fruit.fruitData) { fruit in
                    NavigationLink(destination: FruitsDetailView(fruit: fruit)) {
                        FruitCell(fruit: fruit)
                            .onTapGesture(count: 4) {
                                isOnboarding = true
                            }
                    }
                }
            }//End list
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listStyle(.plain)
            .navigationTitle("Fruit List")
            
        } // End zNavgation
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
