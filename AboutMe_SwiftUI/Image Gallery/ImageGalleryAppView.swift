//
//  ImageGalleryAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct ImageGalleryAppView: View {
    @StateObject var dataModel = DataModel()
    
    var body: some View {
        NavigationView {
            GridView()
        }
        .environmentObject(dataModel)
        .navigationViewStyle(.stack)
    }
}

struct ImageGalleryAppView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGalleryAppView()
    }
}
