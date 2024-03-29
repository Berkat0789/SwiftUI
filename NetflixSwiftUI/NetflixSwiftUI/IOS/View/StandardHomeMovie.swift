//
//  StandardHomeMovie.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/15/22.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    
    //MARK: properties
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()        
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
