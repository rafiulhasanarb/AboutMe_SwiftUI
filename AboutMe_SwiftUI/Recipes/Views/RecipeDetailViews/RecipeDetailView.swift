//
//  RecipeDetailView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct RecipeDetailView: View {
    @Binding var recipe: Recipe
    
    var body: some View {
        VStack {
            TopView(recipe: $recipe)
            ScrollView {
                BottomView(recipe: recipe)
            }
        }
    }
}

private struct TopView: View {
    #if os(iOS)
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    #endif
    @Binding var recipe: Recipe
    
    private var frameHeight: CGFloat {
        #if os(iOS)
        verticalSizeClass == .compact ? 150.0 : 300.0
        #else
        150.0
        #endif
    }
    
    var body: some View {
        TitleView(recipe: $recipe)
            .frame(height: frameHeight, alignment: .bottom)
            .background(alignment: .bottom) {
                recipe.fullImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .clipped()
    }
}

private struct BottomView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            RecipeIngredientsView(recipe: recipe)
            RecipeDirectionsView(recipe: recipe)
        }
        .padding()
    }
}
