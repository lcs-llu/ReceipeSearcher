//
//  DetailView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-13.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    VStack {
                        Image("pizza")
                            .resizable()
                            .scaledToFit()
                        Image(systemName: "heart.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                })
                Section(content: {
                    Text("Instructions placeholder text")
                }, header: {
                    Text("Instructions")
                })
                Section(content: {
                    Text("Ingredients placeholder text")
                }, header: {
                    Text("Ingredients")
                })
            }
            .navigationTitle("Pizza")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
