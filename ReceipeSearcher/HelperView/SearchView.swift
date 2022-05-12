//
//  SearchView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-10.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Search Recipe")
                    .font(.title)
                
                Form {
                    Section{
                        Text("enter")
                    }
                }
                
                Spacer()
                
            }
        }
        .navigationTitle("Search recipe")
    }
}
   
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
