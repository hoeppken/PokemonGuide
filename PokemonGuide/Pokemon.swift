//
//  PokemonType.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 04.03.25.
//

import Foundation

struct Pokemon: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var image: String
    var stats: [Stats]
    var longDescription: String
    
}
