//
//  AppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import SwiftUI

struct AppView: View {
    var appModel: AppModel
    
    var body: some View {
            VStack {
                Image(appModel.icon)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(appModel: AppModel(name: "About Me", icon: "aboutme", appLink: AppType.StoryView))
    }
}

struct AppModel: Hashable {
    var id = UUID().uuidString
    let name: String
    let icon: String
    let appLink: AppType
}

enum AppType: Hashable {
    case DatePlannerAppView
    case ContentView
    case StoryView
    case AppPrincipleView
    case recipe
    case SymbolGridAppView
    case OrganizingGrids
    case ImageGalleryAppView
    case LandmarksAppView
    case CameraAppView
    case MemeCreatorAppView
    case BubbleLevelAppView
    case SeismometerBrowser
    case GesturesAppView
    case AnimatingShapesAppView
}
