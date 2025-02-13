//
//  RecipeEditorConfig.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct RecipeEditorConfig {
    var recipe = Recipe.emptyRecipe()
    var shouldSaveChanges = false
    var isPresented = false
    
    mutating func presentAddRecipe(sidebarItem: SidebarItem) {
        recipe = Recipe.emptyRecipe()
        switch sidebarItem {
        case .favorites:
            // Associate the recipe to the favorites collection.
            recipe.isFavorite = true
        case .collection(let name):
            // Associate the recipe to a custom collection.
            recipe.collections = [name]
        default:
            // Nothing else to do.
            break
        }
        shouldSaveChanges = false
        isPresented = true
    }
    
    mutating func presentEditRecipe(_ recipeToEdit: Recipe) {
        recipe = recipeToEdit
        shouldSaveChanges = false
        isPresented = true
    }
    
    mutating func done() {
        shouldSaveChanges = true
        isPresented = false
    }
    
    mutating func cancel() {
        shouldSaveChanges = false
        isPresented = false
    }
}
