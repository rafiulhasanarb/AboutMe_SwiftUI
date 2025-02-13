//
//  RecipeListItemView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct RecipeListItemView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack {
            recipe.smallImage
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(4)
            
            VStack(alignment: .leading) {
                Text(recipe.title)
                    .font(.title3)
                Text(recipe.subtitle)
                    .font(.caption)
            }
            
            Spacer()
            
            if recipe.isFavorite {
                Image(systemName: "heart")
                    .symbolVariant(.fill)
            }
        }
    }
}
