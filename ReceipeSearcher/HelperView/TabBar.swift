//
//  TabBar.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            LikedView ()
                .tabItem {
                    Label("Like",systemImage: "hand.thumbsup")
                }
            
            HistoryView()
                .tabItem {
                    Label("History",systemImage: "book")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
