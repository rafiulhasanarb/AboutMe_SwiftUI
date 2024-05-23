//
//  AppPrincipleView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import SwiftUI

struct AppPrincipleView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Journal", systemImage: "book")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct AppPrincipleView_Previews: PreviewProvider {
    static var previews: some View {
        AppPrincipleView()
    }
}
