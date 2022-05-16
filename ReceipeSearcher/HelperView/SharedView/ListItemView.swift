//
//  ListItemView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-13.
//

import SwiftUI

struct ListItemView: View {
    
    var recipe: Recipe
    
    @Binding var history: [Recipe]
    
    var body: some View {
        HStack() {
            RemoteImageView(fromURL: URL(string: recipe.strMealThumb)!)
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
            VStack(alignment: .leading) {
                Text(recipe.strMeal)
                    .bold()
                Text(recipe.strArea)
                    .font(.caption)
            }
        }
        .onAppear(perform: {
            saveHistory()
        })
    }
    
    func saveHistory() {
        let newSearch = Recipe(idMeal: "", strMeal: recipe.strMeal, strArea: "", strInstructions: "", strMealThumb: "", strIngredient1: "", strIngredient2: "", strIngredient3: "", strIngredient4: "", strIngredient5: "", strIngredient6: "", strIngredient7: "", strIngredient8: "", strIngredient9: "", strIngredient10: "", strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "", strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: "", strIngredient20: "")
        history.insert(newSearch, at: 0)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(recipe: testMeal, history: .constant([testMeal]))
    }
}
