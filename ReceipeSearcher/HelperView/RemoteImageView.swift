//
//  RemoteImageView.swift
//  ReceipeSearcher
//
//  Created by Leo Lu on 2022-05-11.
//

import SwiftUI

struct RemoteImageView: View {
    let formURL: URL
    
    var body: some View {
        AsyncImage(url: formURL,
                   content: { downloadImage in
               downloadImage
                .resizable()
                .scaledToFit()
        },
        
                   placeholder: {
                   ProgressView()
    })
}
                   }

struct RemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageView(formURL: <#T##URL#>)
    }
}
