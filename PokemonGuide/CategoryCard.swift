//
//  PokemonView.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 04.03.25.
//

import SwiftUI

struct CategoryCard: View {
    
    var category: Category
    
    var body: some View {
       
        ZStack {
            
            Rectangle()
                .fill(Color.gray)
                .opacity(0.1)
            
            HStack {
                
                Image(category.imageName)
                Text(category.categoryType)
                    
                
                
            }
        }
            
        
        
        
    }
}

#Preview {
    CategoryCard(category: Category(imageName: "pikachu", categoryName: "elektric", categoryColor: "test", categoryType: "type", pokemons: [Pokemon]()))
}
