//
//  GolbalHelpers.swift
//  NetflixSwiftUI
//
//  Created by Berkat Bhatti on 8/15/22.
//

import Foundation


let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopia", "Exciting", "Suspenswful","Si-fi TV"])

let examleMovies: [Movie] = [
    Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopia", "Exciting", "Suspenswful","Si-fi TV"]),
    Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopia", "Exciting", "Suspenswful","Si-fi TV"]),
    Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopia", "Exciting", "Suspenswful","Si-fi TV"]),
    Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopia", "Exciting", "Suspenswful","Si-fi TV"])
]
