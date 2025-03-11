//
//  CategoryView.swift
//  PokemonGuide
//
//  Created by Rafael dos Santos Varela on 10.03.25.
//

import SwiftUI

struct ContentView: View {
    
    @State var categories = [Category]()

    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false){
                
                VStack (spacing: 20){
                    
                    ForEach(categories) { cat in
                        
                        NavigationLink {
                            
                            PokemonListView(categorie: cat)
                        } label: {
                            
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).foregroundColor(getCategoryColor(category: cat.type))
                                
                            }
                            HStack {
                                
                                Image(systemName: getCategorieIcon(category: cat.type))
                                Text(cat.type).bold()
                            }.foregroundStyle(.black).padding(.vertical)
                            
                        }
                        
                    }
                    
                }.padding(.horizontal)
                
                
            }.navigationTitle(Text("Categories"))
            
        }.onAppear {
            self.categories = DataService.getFileData()
        }
       
        
    }
    
    func getCategorieIcon(category:String)-> String{
        
        switch (category) {
        case "Electric": return "bolt.circle"
        case "Fire": return "flame.circle"
        case "Grass": return "leaf.circle"
        case "Water": return "drop.circle"
        default: return ""
        
        }
        
    }
    func getCategoryColor(category: String) -> Color {
        switch (category) {
        case "Electric":
            return Color.yellow
        case "Fire":
            return Color.red
        case "Grass":
            return Color.green
        case "Water":
            return Color.blue
        default:
            return Color.gray
        }
    }
    
}

#Preview {
    ContentView()
}


//1. Create a var to store the values of the Categories
//2. for the Categories to be clicable, create a NavigationStack
//3. Create a ScrollView, so the Scroll is possible
//4. to hide the Scroll indicator use (showsIndicators:false) as an argument for the ScrollView
//5. Now is time to arrange the elements with a VStack with an argument of (spacing:20)
//6. Inside the VStack we need a forEach loop to do some code for each element/category
//7. Now in the loop we create an instance of the destination, in this case: PokemonListView and put as an argument that a categorie of this view will be a type of the var cat (created in the loop)
//8. After the link and still inside the loop, its time to create the "button like" categories. We start with a ZStack containing the rectangle and a HStack containing the system image and the text for the category.
//9. Now the tricky part. For the categorie color of each category, create a func to getCategoryColor using switch cases. For the category icon do the same and create a func to getCategoryIcon. For the text you can call inside the () the cat.type
//10. You have to add a modifier so the var categories can get the Data from the array Category in the DataService file.
//11. to add a title you just have to add a modifier to the ScrollView : .navigationTitle(Text(""))
