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
                .fill(.blue)
                .opacity(0.1)
                .frame(width: 200, height: 100)
            
            HStack {
                
                Image(category.categoryImage)
                Text(category.type)
                    
                
                
            }
        }
            
        
        
        
    }
}

#Preview {
    CategoryCard(category: Category(type: "Electric", categoryImage: String("bolt.circle"), categoryColor:String()))
    
}
