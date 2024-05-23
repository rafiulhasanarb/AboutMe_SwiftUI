//
//  TitleView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct TitleView: View {
    #if os(iOS)
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    #endif
    @Binding var recipe: Recipe
    
    var body: some View {
        HStack {
            #if os(iOS)
            switch horizontalSizeClass {
            case .compact:
                CompactTitleView(recipe: $recipe)
            default:
                RegularTitleView(recipe: $recipe)
            }
            #else
            RegularTitleView(recipe: $recipe)
            #endif
        }
        .padding()
        .background(Color.primary
            .colorInvert()
            .opacity(0.75))
    }
}
