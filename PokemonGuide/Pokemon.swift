//
//  Stats.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 06.03.25.
//

import Foundation

struct Pokemon:  Decodable,Identifiable {
    
    let id = UUID()
    var name: String
    var about: String
    var hp: Int
    var atk: Int
    var def: Int
    var spatk: Int
    var spdef: Int
    var spd: Int
    var image: String
    
}


