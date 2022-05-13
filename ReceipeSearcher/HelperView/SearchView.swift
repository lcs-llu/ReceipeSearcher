//
//  SearchView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-10.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text(" \(searchText)")
                    .searchable(text: $searchText, prompt: "Enter")
                    .navigationTitle("SearchRecipe")
                
                Image("hamburger")
                    .resizable()
                    .scaledToFit()
                
            }
        }
    }
    
    
    
    
    
    
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
