//
//  HomeView.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/14/22.
//

import SwiftUI

struct HomeView: View {
    
    var homeVM = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
        
            // Categories
            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVStack { // lazy slows down the request for all the images in view
                    ForEach(homeVM.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Spacer()
                            }// End category HStack
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(homeVM.getMovieFor(category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200, alignment: .leading)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        } // End Vstack (Holding movies)
                        .foregroundColor(.white)

                    }
                }// Main Vstack
            } // Main ScrollView
        } // end Zstack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
