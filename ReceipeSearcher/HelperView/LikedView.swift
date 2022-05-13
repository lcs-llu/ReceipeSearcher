//
//  LikedView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import SwiftUI

struct LikedView: View {
    var body: some View {
        NavigationView {
            
            Text("You haven't liked any recipes to here yet")
                .padding()
                .navigationTitle("Like")
        }
    }
}


struct LikedView_Previews: PreviewProvider {
    static var previews: some View {
        LikedView()
    }
}
