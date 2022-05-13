//
//  ReceipeSearcherApp.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-10.
//

import SwiftUI

@main
struct ReceipeSearcherApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                
                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                
                LikedView ()
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
