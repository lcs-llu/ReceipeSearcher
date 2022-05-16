//
//  DetailView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-13.
//

import SwiftUI

struct DetailView: View {
    
    var recipe: Recipe
    
    @State var inLiked: Bool
    
    @Binding var liked: [Recipe]
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    
                    RemoteImageView(fromURL: URL(string: recipe.strMealThumb)!)
                    
                    
                })
                LikedButtonView(recipe: recipe, inLiked: $inLiked, liked: $liked)
                Section(content: {
                    Text(recipe.strInstructions)
                }, header: {
                    Text("Instructions")
                })
                Section(content: {
                    List {
                        Text(recipe.strIngredient1!)
                        Text(recipe.strIngredient2!)
                        Text(recipe.strIngredient3!)
                        Text(recipe.strIngredient4!)
                        Text(recipe.strIngredient5!)
                        Text(recipe.strIngredient6!)
                        Text(recipe.strIngredient7!)
                        Text(recipe.strIngredient8!)
                        Text(recipe.strIngredient9!)
                        Text(recipe.strIngredient10!)
                    }
                }, header: {
                    Text("Ingredients")
                })
            }
            .navigationTitle(recipe.strMeal)
        }.onAppear {
            print(recipe)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(recipe: testMeal,
                   inLiked: false,
                   liked: .constant([]))
    }
}
