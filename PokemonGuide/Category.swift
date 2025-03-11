//
//  Category.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 06.03.25.
//

import Foundation

struct Category: Identifiable, Decodable {
    
    let id = UUID()
    var type : String
    var categoryImage: String
    var categoryColor: String
    
}
//var pokemons: [Pokemon] 
