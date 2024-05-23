//
//  ImageDetailView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 13/8/22.
//

import SwiftUI

struct ImageDetailView: View {
    let item: Item

    var body: some View {
        AsyncImage(url: item.url) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        if let url = Bundle.main.url(forResource: "mushy1", withExtension: "jpg") {
            ImageDetailView(item: Item(url: url))
        }
    }
}
