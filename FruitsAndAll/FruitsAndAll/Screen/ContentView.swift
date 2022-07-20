//
//  ContentView.swift
//  FruitsAndAll
//
//  Created by Berkat Bhatti on 7/18/22.
//

import SwiftUI

struct ContentView: View {
    
    let fruits = FruitData
    
    @AppStorage(userDefaults.isOnboarding.rawValue) var isONboarding: Bool = true

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    SwiftRowView(fruit: fruit)
                        .padding(.vertical, 6)
                        .onTapGesture(count: 3) {
                            isONboarding = true
                        }
                }
            }// End list
            .navigationTitle("Fruit list")
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))

        }// End bavigaiton
        .navigationViewStyle(.stack)
        
        
        
//        Text("Hello, world!")
//            .onTapGesture(count: 3, perform: {
//                isONboarding = true
//            })
//            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
