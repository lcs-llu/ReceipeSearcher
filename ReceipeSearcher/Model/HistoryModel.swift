//
//  HistoryModel.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-16.
//

import Foundation

struct History: Identifiable {
    
    let id = UUID()
    let searchInput: String
    
}

let sampleHistory = History(searchInput: "Chicken")
