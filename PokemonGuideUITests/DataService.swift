//
//  DataService.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 04.03.25.
//

import Foundation

struct DataService {
    
    func getFileData() -> [Category] {
        
        // Get the file path to data.json
        
        if let url =  Bundle.main.url(forResource: "data", withExtension: "json") {
            
            
            
            
            do {
                //Read the File and turn it into Data
                let  data = try Data(contentsOf: url)
                
                //Parse data into Swift instances
                let decoder = JSONDecoder()
                
                
                do {
                    let categories = try decoder.decode([Category].self, from: data)
                    return categories
                }
                catch {
                    print("Could not parse JSON: \(error)")
                }
                
            }
            
            
            
            catch {
                print("Failed to read file: \(error)")
            }
            
            
            
        }
        return [Category]()
        
        
        
    }
    
}


