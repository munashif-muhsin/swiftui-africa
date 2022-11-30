//
//  VideoModel.swift
//  Africa
//
//  Created by Muhsin on 26/10/2022.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
