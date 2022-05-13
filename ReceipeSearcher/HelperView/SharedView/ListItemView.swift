//
//  ListItemView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-13.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        HStack() {
            Image("pizza")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .clipped()
            VStack(alignment: .leading) {
                Text("Pizza")
                    .bold()
                Text("Italian")
                    .font(.caption)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
