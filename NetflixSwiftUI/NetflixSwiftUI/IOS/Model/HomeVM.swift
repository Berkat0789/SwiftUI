//
//  HomeVM.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/15/22.
//

import Foundation

class HomeVM: ObservableObject {
    // String = Category of movies
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }
    
    public func getMovieFor(_ category: String) -> [Movie] {
        movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"]  = examleMovies
        movies["Stand UP"] = examleMovies.shuffled()
        movies["Watch Again"] = examleMovies.shuffled()
        movies["For you"] = examleMovies.shuffled()


    }
}
