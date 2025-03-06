//
//  ContentView.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 04.03.25.
//

import SwiftUI

struct CategoryView: View {
    
    @State var pokemon = [Pokemon]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false){
                
                VStack {
                    ForEach(pokemon) { poke in
                        
                        NavigationLink {
                            PokemonView(poke:poke)
                        } label: {
                            CategoryCard(poke: poke).padding(.bottom, 20)
                        }

                        
                        
                    }
                }
                
            }.padding(.horizontal)
        }.ignoresSafeArea(.all)
        
        
        .onAppear {
            pokemon = dataService.getFileData()
            
        }
    }
}

#Preview {
    CategoryView()
}
