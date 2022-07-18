//
//  ContentView.swift
//  AsyncImages
//
//  Created by Berkat Bhatti on 7/15/22.
//

import SwiftUI






struct ContentView: View {
    // Image url
    private let imageURl = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        //MARK: Basic
//    AsyncImage(url: URL(string: imageURl))
        // MARK: SCale
//        AsyncImage(url: URL(string: imageURl), scale: 3.0)
        // MARK: Placeholder
        
//        AsyncImage(url: URL(string: imageURl)) { phase in
//            if let image = phase.image {
//                image.scaleImage()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").updatePlaceHolder()
//            } else {
//                Image(systemName: "photo.circle.fill").updatePlaceHolder()
//            }
//        }
//        .padding(40)
        
        
//MARK: Animation
//        AsyncImage(url: URL(string: imageURl), scale: 3.0,  transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
//            switch phase {
//            case .success(let image):
//                image
//                    .scaleImage()
////                    .transition(.move(edge: .bottom))
//                    .transition(.scale)
//
//            case .failure(_):
//                Image(systemName: "circle")
//            default:
//                Image(systemName: "circle")
//            }
//
//        }
//        .padding(40)
        
    
        AsyncImage(url: URL(string: imageURl), transaction: Transaction(animation: .spring(response: 0.6, dampingFraction: 0.4, blendDuration: 0.2))) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizeImage()
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "photo.circle.fill").updatePlaceholder()
            case .empty:
                Image(systemName: "photo.fill").updatePlaceholder()
            @unknown default:
                Image(systemName: "photo.circle.fill").updatePlaceholder()
            }
            
        }.padding(40)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Image {
    func resizeImage() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func updatePlaceholder() -> some View {
        self
            .resizeImage()
            .foregroundColor(.purple)
            .frame(maxWidth: 128)
            .opacity(0.4)
    }
}
