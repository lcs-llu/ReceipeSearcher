//
//  HistoryView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-12.
//

import SwiftUI



struct HistoryView: View {
    
    @Binding var history: [Recipe]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(history) {currentHistory in
                    Text(currentHistory.strMeal)
                }
            }
            .navigationTitle("History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: .constant([testMeal]))
    }
}
