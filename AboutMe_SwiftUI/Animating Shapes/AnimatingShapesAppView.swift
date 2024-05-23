//
//  AnimatingShapesAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct AnimatingShapesAppView: View {
    @State var selection: Topic? = nil
    
    var body: some View {
        NavigationView {
            TopicList(contentSource: TopicData.homeContent)
        }
    }
}

struct AnimatingShapesAppView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingShapesAppView()
    }
}
