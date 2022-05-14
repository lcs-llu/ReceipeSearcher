//
//  RemoteImageView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-14.
//

import SwiftUI

struct RemoteImageView: View {
    let fromURL: URL
    var body: some View {
        AsyncImage(url: fromURL,
                   content: { downloadedImage in
            downloadedImage
                .resizable()
                .scaledToFit()
        },
                   placeholder: {
                ProgressView()
            })
    }
}

struct RemoteImageView_Previews: PreviewProvider {
    static let example = URL(string: testMeal.strMealThumb)!
    static var previews: some View {
        RemoteImageView(fromURL: example)
    }
}
