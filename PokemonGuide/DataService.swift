//
//  DataService.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 04.03.25.
//

import Foundation

struct DataService {
    func getFileData() -> [Pokemon] {
        
        // Get the file path to DemoData.json
        
        if let url =  Bundle.main.url(forResource: "data", withExtension: "json") {
            
            
            
            
            do {
                //Read the File and turn it into Data
                let  data = try Data(contentsOf: url)
                
                //Parse data into Swift instances
                let decoder = JSONDecoder()
                
                
                do {
                    let pokemons = try decoder.decode([Pokemon].self, from: data)
                    return pokemons
                }
                catch {
                    print("Could not parse JSON: \(error)")
                }
                
            }
            
            
            
            catch {
                print("Failed to read file: \(error)")
            }
            
            
            
        }
        return [Pokemon]()
       
        
        
        
    }
    
    func getCategory() -> [Category] {
        
        return [Category(type: "Electric", categoryImage: String("bolt.circle"), categoryColor: ".blue"),
                Category(type: "Grass", categoryImage: String("bolt.circle"), categoryColor: ".yellow")]
        
    }
}




