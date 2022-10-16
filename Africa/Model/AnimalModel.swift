//
//  AnimalModel.swift
//  Africa
//
//  Created by Muhsin Munashif on 16/10/2022.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
