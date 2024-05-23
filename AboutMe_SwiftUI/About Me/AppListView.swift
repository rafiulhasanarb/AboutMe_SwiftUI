//
//  AppListView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 12/8/22.
//

import SwiftUI

struct AppListView: View {
    var appList: [AppModel] = [
        AppModel(name: "color grid", icon: "color grid", appLink: AppType.ContentView),
        AppModel(name: "editing grids", icon: "editing grids", appLink: AppType.OrganizingGrids),
        AppModel(name: "bubble level", icon: "bubble level", appLink: AppType.DatePlannerAppView),
        AppModel(name: "aboutme", icon: "aboutme", appLink: AppType.CameraAppView),
        AppModel(name: "meme creator", icon: "meme creator", appLink: AppType.SymbolGridAppView),
        AppModel(name: "animating shapes", icon: "animating shapes", appLink: AppType.ImageGalleryAppView),
        AppModel(name: "seismometer", icon: "seismometer", appLink: AppType.LandmarksAppView),
        AppModel(name: "recognizing gestures", icon: "recognizing gestures", appLink: AppType.StoryView),
        AppModel(name: "date planner", icon: "date planner", appLink: AppType.MemeCreatorAppView),
        AppModel(name: "image gallery", icon: "image gallery", appLink: AppType.BubbleLevelAppView),
        AppModel(name: "story", icon: "story", appLink: AppType.SeismometerBrowser),
        AppModel(name: "capturing photos", icon: "capturing photos", appLink: AppType.GesturesAppView),
        AppModel(name: "placeholder-1", icon: "animating shapes", appLink: AppType.recipe),
        AppModel(name: "placeholder-1", icon: "turtlerock", appLink: AppType.AnimatingShapesAppView),
        AppModel(name: "placeholder-1", icon: "turtlerock", appLink: AppType.AppPrincipleView)]
    let columnLayout = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(appList, id: \.self) { app in
                        //NavigationLink(destination: Text("\(app.appLink)")) {
                            AppView(appModel: app)
                        //}
                    }
                }
                .navigationTitle("App List")
                .navigationBarTitleDisplayMode(.inline)
            }
            .padding()
        }
    }
}

struct AppListView_Previews: PreviewProvider {
    static var previews: some View {
        AppListView()
    }
}
