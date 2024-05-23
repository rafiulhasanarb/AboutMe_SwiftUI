//
//  SidebarItem.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

enum SidebarItem: Hashable {
    case all, favorites, recents
    case collection(String)
    
    var title: String {
        switch self {
        case .all:
            return "All Recipes"
        case .favorites:
            return "Favorites"
        case .recents:
            return "Recents"
        case .collection(let name):
            return name
        }
    }
}

struct SidebarView: View {
    @Binding var selection: SidebarItem
    @ObservedObject var recipeBox: RecipeBox
    
    var body: some View {
        List {
            Text("List view")
        }
//        List(selection: $selection) {
//            Section("Library") {
//                NavigationLink(value: Text(SidebarItem.all.title)) {
//                    Text(SidebarItem.all.title)
//                }
//                NavigationLink(value: Text(SidebarItem.favorites.title)) {
//                    Text(SidebarItem.favorites.title)
//                }
//                NavigationLink(value: Text(SidebarItem.recents.title)) {
//                    Text(SidebarItem.recents.title)
//                }
//            }
//
//            Section("Collections") {
//                ForEach(recipeBox.collections, id: \.self) { collectionName in
//                    NavigationLink(value: Text(collectionName)) {
//                        Text(collectionName)
//                    }
//                }
//            }
//        }
    }
}
