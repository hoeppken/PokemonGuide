//
//  Group.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 07.03.25.
//

import Foundation

struct Group: Identifiable, Decodable {
    
    let id = UUID()
    var groupName: String
    var pokemons: [Pokemon]
    
}
