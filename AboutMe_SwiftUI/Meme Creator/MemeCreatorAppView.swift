//
//  MemeCreatorAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct MemeCreatorAppView: View {
    @StateObject private var fetcher = PandaCollectionFetcher()
    
    var body: some View {
        NavigationView {
            MemeCreator()
                .environmentObject(fetcher)
        }
    }
}

struct MemeCreatorAppView_Previews: PreviewProvider {
    static var previews: some View {
        MemeCreatorAppView()
    }
}
