//
//  LikedView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import SwiftUI

struct LikedView: View {
    
    @Binding var liked: [Recipe]
    @Binding var history: [Recipe]
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                if liked.isEmpty {
                    
                    Spacer()
                    
                    Text("You haven't liked any recipes to here yet")
                        .padding()
                    
                    Spacer()
                } else {
                    List(liked, id:\.idMeal) {currentRecipe in
                        NavigationLink(destination: DetailView(recipe: currentRecipe, inLiked: true, liked: $liked)) {
                            ListItemView(recipe: currentRecipe, history: $history)
                        }
                    }
                }
            }
            .navigationTitle("Liked Recipe")
        }
    }
}


struct LikedView_Previews: PreviewProvider {
    static var previews: some View {
        LikedView(liked: .constant([testMeal]), history: .constant([testMeal]))
    }
}
