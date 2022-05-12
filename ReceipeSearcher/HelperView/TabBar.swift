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
                    
                }
            
            LikedView ()
            
            HistoryView()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
