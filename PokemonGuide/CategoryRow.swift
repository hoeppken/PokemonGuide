//
//  ContentView.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 04.03.25.
//

import SwiftUI

struct CategoryRow: View {
    
    @State var categories = [Pokemon]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false){
                
                VStack {
                    ForEach(categories) { cat in
                        
                        NavigationLink {
                            CategoryCard(cat:cat)
                        } label: {
                            CategoryGroup(cat: cat).padding(.bottom, 20)
                        }

                        
                        
                    }
                }
                
            }.padding(.horizontal)
        }.ignoresSafeArea(.all)
        
        
        .onAppear {
            categories = dataService.getFileData()
            
        }
    }
}

#Preview {
    CategoryRow()
}
