//
//  HistoryView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationView{
            Text("You haven't searched any recipes yet")
                .padding()
                .navigationTitle("History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
