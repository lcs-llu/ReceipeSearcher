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
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                SearchView(liked: $liked)
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                
                LikedView(liked: $liked)
                    .tabItem {
                        Label("Liked",systemImage: "hand.thumbsup")
                    }
                
                HistoryView()
                    .tabItem {
                        Label("History",systemImage: "book")
                    }
            }
        }
    }
}
