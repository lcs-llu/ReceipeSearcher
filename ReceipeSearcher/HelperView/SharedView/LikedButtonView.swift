//
//  LikedButtonView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-14.
//

import SwiftUI

struct LikedButtonView: View {
    
    let recipe: Recipe
    
    @Binding var inLiked: Bool
    
    @Binding var liked: [Recipe]
    
    var body: some View {
        Button(action: {
            addOrRemoveRecipeFromLiked()
        }, label: {
            Image(systemName: inLiked == false ? "heart.circle" : "heart.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color("deepRed"))
        })
    }
    
    func addOrRemoveRecipeFromLiked() {
        if inLiked == false {
            liked.append(recipe)
            inLiked = true
        } else {
            liked.removeAll(where: { currentRecipeInList in
                currentRecipeInList.idMeal == recipe.idMeal
            })
            inLiked = false
        }
    }
}

struct LikedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikedButtonView(recipe: testMeal, inLiked: .constant(true), liked: .constant([]))
    }
}
