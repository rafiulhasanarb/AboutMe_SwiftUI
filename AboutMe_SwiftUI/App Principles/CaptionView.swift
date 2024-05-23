//
//  CaptionView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import SwiftUI

struct CaptionView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .padding()
            .background(Color("TextContrast").opacity(0.75),
                        in: RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct CaptionView_Previews: PreviewProvider {
    static var previews: some View {
        CaptionView(text: "captions")
    }
}
