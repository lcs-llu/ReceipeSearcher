//
//  ListItemView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-13.
//

import SwiftUI

struct ListItemView: View {
    
    var recipe: Recipe
    
    var body: some View {
        HStack() {
            RemoteImageView(fromURL: URL(string: recipe.strMealThumb!)!)
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
            VStack(alignment: .leading) {
                Text(recipe.strMeal)
                    .bold()
                Text(recipe.strArea!)
                    .font(.caption)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(recipe: testMeal)
    }
}
