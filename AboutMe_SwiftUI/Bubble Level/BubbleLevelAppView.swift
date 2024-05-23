//
//  BubbleLevelAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct BubbleLevelAppView: View {
    @StateObject private var motionDetector = MotionDetector(updateInterval: 0.01)
    
    var body: some View {
        LevelView()
            .environmentObject(motionDetector)
    }
}

struct BubbleLevelAppView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleLevelAppView()
    }
}
