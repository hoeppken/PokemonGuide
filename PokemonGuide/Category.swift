//
//  Category.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 06.03.25.
//

import Foundation

struct Category: Identifiable, Decodable {
    
    let id = UUID()
    var imageName: String
    var categoryName: String
    var categoryColor: String
    
    
    
}
//var pokemons: [Pokemon] 
