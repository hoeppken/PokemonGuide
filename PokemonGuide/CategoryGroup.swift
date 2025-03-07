//
//  CategoryGroup.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 07.03.25.
//

import SwiftUI

struct CategoryGroup: View {
    
    var pokemon : Pokemon
    var category : Category
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(category.categoryType)
            HStack {
                image(
            }
            HStack {
                
            }
        }
        
        
    }
}

#Preview {
    CategoryGroup()
}
