//
//  DetailView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct DetailView: View {
    @Binding var recipeId: Recipe.ID?
    @EnvironmentObject private var recipeBox: RecipeBox
    @State private var showDeleteConfirmation = false
    
    private var recipe: Binding<Recipe> {
        Binding {
            if let id = recipeId {
                return recipeBox.recipe(with: id) ?? Recipe.emptyRecipe()
            } else {
                return Recipe.emptyRecipe()
            }
        } set: { updatedRecipe in
            recipeBox.update(updatedRecipe)
        }
    }

    var body: some View {
        ZStack {
            if recipeBox.contains(recipeId) {
                RecipeDetailView(recipe: recipe)
                    .navigationTitle(recipe.wrappedValue.title)
                    #if os(iOS)
                    .navigationBarTitleDisplayMode(.inline)
                    #endif
                    .toolbar {
                        RecipeDetailToolbar(
                            recipe: recipe,
                            showDeleteConfirmation: $showDeleteConfirmation,
                            deleteRecipe: deleteRecipe)
                    }
            } else {
                RecipeNotSelectedView()
            }
        }
    }
    
    private func deleteRecipe() {
        recipeBox.delete(recipe.id)
    }
}
