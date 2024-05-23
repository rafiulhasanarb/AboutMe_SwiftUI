//
//  CompactTitleView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import Foundation
import SwiftUI

struct CompactTitleView: View {
    @Binding var recipe: Recipe

    var body: some View {
        Spacer()
        VStack {
            Text(recipe.title)
                .font(.title2)
            StarRating(rating: $recipe.rating)
            Text(recipe.subtitle)
                .font(.subheadline)
        }
        Spacer()
    }
}
