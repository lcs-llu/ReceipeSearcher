//
//  SearchView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-10.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String = ""
    
    @State var foundRecipes: [Recipe] = []
    
    @Binding var liked: [Recipe]
    
    @Binding var history: [Recipe]
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                VStack {
                    
                    List(foundRecipes, id: \.idMeal) { currentRecipe in
                        NavigationLink(destination: DetailView(recipe: currentRecipe, inLiked: false, liked: $liked)) {
                            ListItemView(recipe: currentRecipe, history: $history)
                        }
                    }
                    .searchable(text: $searchText, prompt: "Search recipes")
                    .onChange(of: searchText) { whatWasTyped in
                        Task {
                            await fetchResults()
                        }
                    }
                }
                .navigationTitle("Recipe Searcher")
                
                VStack {
                    Spacer()
                    
                    Image("hamburger")
                        .resizable()
                        .scaledToFit()
                    
                    Spacer()
                    
                }
                .opacity(searchText.isEmpty ? 1.0 : 0.0)
            }
            
        }
        
    }
    
    
    func fetchResults() async {
        
        
        let input = searchText.lowercased().replacingOccurrences(of: " ", with: "+")
        
        
        let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?s=\(input)")!
        

        var request = URLRequest(url: url)
        request.setValue("application/json",
                         forHTTPHeaderField: "Accept")
        request.httpMethod = "GET"
        
        
        let urlSession = URLSession.shared
        
        
        do {
            
            let (data, _) = try await urlSession.data(for: request)
            
            
//            print(String(data: data, encoding: .utf8)!)
            
            
            let decodedSearchResult = try JSONDecoder().decode(SearchResult.self, from: data)
            
            
            foundRecipes = decodedSearchResult.meals
            
        } catch {
            
            
            print("Could not retrieve / decode JSON from endpoint.")
            print(error)
            
        }
        
    }
    
    
    
    
    
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(liked: .constant([testMeal]), history: .constant([testMeal]))
    }
}

