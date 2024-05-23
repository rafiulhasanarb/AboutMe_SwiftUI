//
//  LandmarksAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 13/8/22.
//

import SwiftUI

struct LandmarksAppView: View {
    @State private var selection: Tab = .featured
    @StateObject var modelData = ModelData()
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct LandmarksAppView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksAppView()
            .environmentObject(ModelData())
    }
}
