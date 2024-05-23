//
//  CameraAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct CameraAppView: View {
    init() {
        UINavigationBar.applyCustomAppearance()
    }
    
    var body: some View {
        CameraView()
    }
}

struct CameraAppView_Previews: PreviewProvider {
    static var previews: some View {
        CameraAppView()
    }
}

fileprivate extension UINavigationBar {
    static func applyCustomAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
