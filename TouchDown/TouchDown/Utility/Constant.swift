//
//  Constant.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/7/22.
//

import Foundation
import SwiftUI


//MARK: FOnts, DAta, Color, UX, API, Images, Strings, Misc

let players: [Player] = Bundle.main.decode("player.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let colorBackground = "ColorBackground"
let colorGray = Color(uiColor: .systemGray4)
let scenes = UIApplication.shared.connectedScenes.first as? UIWindowScene
let sampleProduct: Product = products[0]


var columnSpacing: Double = 10
var rowSpacing: Double = 10
var gridLayout: [GridItem] {
    Array(repeating: GridItem(.flexible(minimum:100, maximum: 350), spacing: rowSpacing, alignment: .center), count: 2)
}
