//
//  CodableBundleExtension.swift
//  AfricaApp
//
//  Created by Usha Sai Chintha on 18/09/22.
//

import Foundation

extension Bundle{
    func decode(_ file: String) -> [CoverImage]{
        // 1. Locate the json file
        // 2. Create a property for the data
        // 3. Create a decoder
        // 4. Create a property for the decoded data
        // 5. Return ready to use data
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loaded
    }
}
