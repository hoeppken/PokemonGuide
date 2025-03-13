//
//  PokemonDetailView.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 12.03.25.
//

import SwiftUI

struct PokemonDetailView: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            HStack (alignment:.top) {
                Image(pokemon.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                
                VStack (alignment: .leading) {
                    Text("Stats")
                        .bold()
                        .padding(.bottom, 20)
                    Text("HP: \(pokemon.hp)")
                    Text("Attack: \(pokemon.atk)")
                    Text("Defense: \(pokemon.def)")
                    Text("Special Attack: \(pokemon.spatk)")
                    Text("Special Defense: \(pokemon.spdef)")
                    Text("Speed: \(pokemon.spd)")
                }
            }
                
            Text(pokemon.about)
            
            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle(pokemon.name)
        
    }
}

//#Preview {
  //  PokemonDetailView()
//}
