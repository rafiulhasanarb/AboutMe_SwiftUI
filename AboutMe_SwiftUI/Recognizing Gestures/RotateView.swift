//
//  RotateView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct RotateView: View {
    @State private var rotation = Angle.zero
    
    var rotationGesture: some Gesture {
        RotationGesture()
            .onChanged{ angle in
                rotation = angle
            }
            .onEnded { angle in
                rotation = angle
            }
    }
    
    var body: some View {
        VStack {
            Text("Use two fingers to rotate the box")
            Spacer()
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 225, height: 225)
                .rotationEffect(rotation)
                .gesture(rotationGesture)
            Spacer()
        }
        .navigationTitle("Rotate")
        .padding()
        .toolbar {
            Button("Reset") {
                rotation = .zero
            }
        }
    }
}

struct RotateView_Previews: PreviewProvider {
    static var previews: some View {
        RotateView()
    }
}
