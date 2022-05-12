//
//  RecipeModel.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import Foundation

struct Recipe: Identifiable {
    
    let id = UUID()
    
    let name: String
    
    let image:String
    
    let URL: String
    
    let description: String
    
    let ingredience: String
}
