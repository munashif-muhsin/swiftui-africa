//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Muhsin Munashif on 30/08/2022.
//

import Foundation

extension Bundle {
    
    func decode(_ file: String) -> [CoverImage] {
        
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 2. Create a property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for Decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode data from \(file)")
        }
        
        // 5. Return the data
        return loaded
        
    }
}
