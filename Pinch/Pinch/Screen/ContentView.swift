//
//  ContentView.swift
//  Pinch
//
//  Created by Berkat Bhatti on 7/17/22.
//

import SwiftUI


fileprivate var imageString = "magazine-front-cover"
fileprivate var imageURL = "https://credo.academy/credo-academy@3x.png"

struct ContentView: View {
    //MARK: Properties
    
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    @State private var imageOffset: CGSize = .zero
    
    func resetImage() {
        return withAnimation(.spring()) {
            imageScale = 1
            imageOffset = .zero
        }
    }
    //MARK: Function
    //MARK: Content
    
    var body: some View {
//        NavigationView {
//            ZStack {
//                Image("magazine-front-cover")
//                    .opacity(isAnimating ? 1 : 0)
//                    .animation(.linear(duration: 1), value: isAnimating)
//                    .scaleEffect(imageScale)
////                    .transition(.move(edge: .bottom))
//                    .onTapGesture(count: 2) {
//                        if imageScale == 1 {
//                            withAnimation(.spring()) {
//                                imageScale = 5
//                            }
//                        } else {
//                            withAnimation(.spring()) {
//                                imageScale = 1
//                            }
//                        }
//                    }
//
//
//            } // End of zstakc
//            .navigationTitle("Pinch & Zoom")
//            .navigationBarTitleDisplayMode(.inline)
//            .onAppear {
//                isAnimating = true
//            }
//        } // End navigaiton Vew
//        .navigationViewStyle(.stack)
        
        NavigationView {
            ZStack {
                Image(imageString)
                    .scaleImage()
                    .shadow(color: .black.opacity(0.6), radius: 12, x: 0, y: 4)
                    .cornerRadius(12)
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimating)
                    .offset(CGSize(width: imageOffset.width, height: imageOffset.height))
                    .scaleEffect(imageScale)
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation {
                                imageScale = 5
                            }
                        } else {
                            resetImage()
                        }
                    }
                    .gesture (
                        DragGesture()
                            .onChanged { value in
                                withAnimation(.linear(duration: 1)) {
                                    imageOffset = value.translation
                                }
                            }
                            .onEnded({ _ in
                                if imageScale <= 1 {
                                   resetImage()
                                }
                            })
                    )
                
            }// End Zstack
            .navigationTitle("Pinch Me")
            .navigationBarTitleDisplayMode(.inline)
            .padding(30)
            .onAppear {
                isAnimating = true
            }
        } // end Navigaiton View
        .navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}


extension Image {
    
    func scaleImage() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func updatePlaceholder() -> some View {
        self
            .scaleImage()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.6)
    }
    
    func addCornerAndShadow() -> some View {
        self
            .shadow(color: .black.opacity(0.5), radius: 12, x: 4, y: 6)
            .cornerRadius(10)
    }
}
