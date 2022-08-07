//
//  File.swift
//  AfricaApp
//
//  Created by Berkat Bhatti on 8/5/22.
//

import Foundation




extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> [T] {
        guard let url = self.url(forResource: file, withExtension: nil) else {fatalError("failed to locate file")}
        
        guard let data = try? Data(contentsOf: url) else {fatalError("failed to return file")}
        
        guard let loadedData = try? JSONDecoder().decode([T].self, from: data) else {fatalError("faild to decode data")}
        
        return loadedData
    }
}
