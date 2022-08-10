//
//  BundleNetworkExtension.swift
//  TouchDown
//
//  Created by Berkat Bhatti on 8/8/22.
//

import Foundation




extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {fatalError("File does not exist")}
        
        guard let data = try? Data.init(contentsOf: url) else {fatalError("invalid URL")}
        
        guard let results = try? JSONDecoder().decode(T.self, from: data) else {fatalError("Failed to decode")}
        return results
    }
}
