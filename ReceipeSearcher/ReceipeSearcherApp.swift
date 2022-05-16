//
//  ReceipeSearcherApp.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-10.
//

import SwiftUI

@main
struct ReceipeSearcherApp: App {
    
    @State var liked: [Recipe] = []
    @State var history: [Recipe] = []
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                SearchView(liked: $liked, history: $history)
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                
                LikedView(liked: $liked, history: $history)
                    .tabItem {
                        Label("Liked",systemImage: "hand.thumbsup")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Label("History",systemImage: "book")
                    }
            }
        }
    }
}
