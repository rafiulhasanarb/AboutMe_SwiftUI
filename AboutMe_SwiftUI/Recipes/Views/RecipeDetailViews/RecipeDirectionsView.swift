//
//  RecipeDirectionsView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct RecipeDirectionsView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Directions")
                .font(.title3)
                .padding(.bottom)
            Text(recipe.directions)
        }
    }
}
