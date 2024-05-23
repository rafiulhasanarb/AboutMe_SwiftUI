//
//  GesturesAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct GesturesAppView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: TapView()) {
                    GestureRow(title: "Tap", description: "Tap a shape to interact with it.", systemImage: "hand.point.up.left")
                }
                NavigationLink(destination: LongPressView()) {
                    GestureRow(title: "Touch and Hold", description: "Touch and hold a shape to interact with it.", systemImage: "hand.tap")
                }
                NavigationLink(destination: DragView()) {
                    GestureRow(title: "Drag", description: "Drag a shape using one finger.", systemImage: "arrow.up.and.down.and.arrow.left.and.right")
                }
                NavigationLink(destination: RotateView()) {
                    GestureRow(title: "Rotate", description: "Rotate a shape with two fingers.", systemImage: "arrow.triangle.2.circlepath")
                }
                NavigationLink(destination: SingleLine()) {
                    GestureRow(title: "Line Drawing", description: "Use your finger to draw a simple line shape.", systemImage: "pencil.tip")
                }
            }
            .navigationTitle("Gestures")
        }
    }
}

struct GesturesAppView_Previews: PreviewProvider {
    static var previews: some View {
        GesturesAppView()
    }
}
