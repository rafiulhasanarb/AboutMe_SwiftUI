//
//  SFSymbolStyling.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 11/8/22.
//

import SwiftUI

struct SFSymbolStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .imageScale(.large)
            .symbolRenderingMode(.monochrome)
    }
}

extension View {
    func sfSymbolStyling() -> some View {
        modifier(SFSymbolStyling())
    }
}
