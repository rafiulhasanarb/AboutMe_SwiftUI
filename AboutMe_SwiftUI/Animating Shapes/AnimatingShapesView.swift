//
//  AnimatingShapesView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import Foundation
import SwiftUI

struct AnimatingShapesApp: View {
    @State var selection: Topic? = nil
    
    var body: some View {
        VStack {
            NavigationView {
                TopicList(contentSource: TopicData.homeContent)
            }
        }
    }
}

