//
//  RecipeIngredientsView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct RecipeIngredientsView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Text("INGREDIENTS")
                .underline()
                .padding(.bottom)
            Text(recipe.ingredients)
                .font(.caption)
                .lineSpacing(10)
        }
        .padding()
        .background(Color.secondary.colorInvert())
    }
}
