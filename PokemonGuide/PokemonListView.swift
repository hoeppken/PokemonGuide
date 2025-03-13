//
//  PokemenListView.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 12.03.25.
//

import SwiftUI

struct PokemonListView: View {
    
    var category : Category
    
    var body: some View {
        
        ScrollView (showsIndicators: false){
            
            LazyVGrid (columns: [GridItem(),GridItem()], spacing:20){
                
                ForEach (category.pokemon) { poke in
                
                    NavigationLink {
                        PokemonDetailView(pokemon: poke)
                    } label: {
                        Image(poke.image).resizable().aspectRatio(contentMode:.fill)
                    }
                    
                    
                }
                
            }.padding()
                .navigationTitle(category.type)
            
        }
        
        
    }
}

//#Preview {
  //  PokemonListView()
//}


//1. Declare a var to store the value of the category
//2. Then create inside the body a scrollview
//3. As in the content view, put inside the scroll view your view organizer. In this case it s gonna be a grid for the pokemons pics.
//4.In the grid we start as in the content view with a forEach loop. This will define the pokemons of the grid.
//5.in the loop u need to plave a navigationLink for each pokemon to go to the detailView of it.The destination has a pokemon var that will get the type of the var in the loop. so destiny:origin -> pokemon:poke. Then the label will also base on that ; Image(origin.image)-> Image (poke.image)
