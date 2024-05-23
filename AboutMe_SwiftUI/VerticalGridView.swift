//
//  VerticalGridView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 18/8/22.
//

import SwiftUI

struct VerticalGridView: View {
    var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble"]
    var layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 16) {
                    ForEach(0..<symbols.count, id: \.self) { index in
                        Image(systemName: symbols[index])
                            .resizable()
                            .padding()
                            .frame(height: 120)
                            .background(Color.green)
                            .cornerRadius(15)
                    }
                }
            }
            .padding()
            .navigationTitle("Items in Grid")
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
