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
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                
                Text("\(searchText)")
                
                
                Image("hamburger")
                    .resizable()
                    .scaledToFit()
                
                List(foundRecipes, id: \.idMeal) {currentRecipe in
                    NavigationLink(destination: DetailView(recipe: <#Recipe#>, inLiked: <#Bool#>, liked: <#Binding<[Recipe]>#>)) {
                        ListItemView(recipe: <#Recipe#>)
                    }
                }
    
                .searchable(text: $searchText)
                .onChange(of: searchText) { whatWasTyped in
                    Task {
                        await fetchResults()
                    }
                }
                
                }
                
            }
            
        }
        
        
        func fetchResults() async {
            
            
            let input = searchText.lowercased().replacingOccurrences(of: " ", with: "+")
            
            
            let url = URL(string: "www.themealdb.com/api/json/v1/1/search.php?s=\(input)")!
            
            
            var request = URLRequest(url: url)
            request.setValue("application/json",
                             forHTTPHeaderField: "Accept")
            request.httpMethod = "GET"
            
            
            let urlSession = URLSession.shared
            
            
            do {
                
                let (data, _) = try await urlSession.data(for: request)
                
                
                print(String(data: data, encoding: .utf8)!)
                
                
                let decodedSearchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                
                
                foundRecipes = decodedSearchResult.results
                
            } catch {
                
                
                print("Could not retrieve / decode JSON from endpoint.")
                print(error)
                
            }
            
        }
        
        
        
        
        
    }
    
    
    struct SearchView_Previews: PreviewProvider {
        static var previews: some View {
            SearchView()
        }
    }

