//
//  TopHeroPreview.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/15/22.
//

import SwiftUI
import Kingfisher

struct TopHeroPreview: View {
    //MARK: properties
    var movie: Movie
    
    func checkForLastCategory(category: String) -> Bool {
//        let count = movie.categories.count
        if movie.categories.last == category {
            return true
        }
        return false
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !checkForLastCategory(category: category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                //Buttons
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        // navigate
                    }
                    Spacer()
                    WhiteButton(buttonText: "Play", imageName: "play.fill", buttonHeight: 50) {
                        print("Play pressed")
                    }
                    .frame(width: 150, alignment: .center)

                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        // navigate to detail
                    }
                    Spacer()


                }

            }
            .foregroundColor(.white)
            .padding()
            .background(
                LinearGradient(colors: [Color.clear, Color.black.opacity(0.95)],
                               startPoint: .top,
                               endPoint: .bottom
                              )
                .padding(.top, 240)
            
            )
        }
    }
}

struct TopHeroPreview_Previews: PreviewProvider {
    static var previews: some View {
        TopHeroPreview(movie: exampleMovie1)
    }
}
