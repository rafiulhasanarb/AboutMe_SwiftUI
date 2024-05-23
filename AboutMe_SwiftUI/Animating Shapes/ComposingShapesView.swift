//
//  ComposingShapesView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct ComposingShapesView: View {
    
   private let arcCount = 6
   private let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(0..<arcCount, id: \.self) { arc in
                    Circle()
                    
                }
            }
            VStack {
                
            }
        }
    }
}

struct ComposingShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ComposingShapesView()
    }
}
