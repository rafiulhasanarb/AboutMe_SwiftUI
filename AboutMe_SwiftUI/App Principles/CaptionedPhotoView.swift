//
//  CaptionedPhotoView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import SwiftUI

struct CaptionedPhotoView: View {
    let assetName: String
    let captionText: String
    
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom) {
                CaptionView(text: captionText)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct CaptionedPhotoView_Previews: PreviewProvider {
    static let landscapeName = "Landscape"
    static let landscapeCaption = "This photo is wider than it is tall."
    static let portraitName = "Portrait"
    static let portraitCaption = "This photo is taller than it is wide."
    static var previews: some View {
        CaptionedPhotoView(assetName: portraitName, captionText: portraitCaption)
        CaptionedPhotoView(assetName: landscapeName, captionText: landscapeCaption)
        .preferredColorScheme(.dark)
        CaptionedPhotoView(assetName: landscapeName, captionText: landscapeCaption)
        .preferredColorScheme(.light)
    }
}
