//
//  DatePlannerAppView.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct DatePlannerAppView: View {
    @StateObject private var eventData = EventData()
    
    var body: some View {
        NavigationView {
            EventList()
            Text("Select an Event")
                .foregroundStyle(.secondary)
        }
        .environmentObject(eventData)
    }
}

struct DatePlannerAppView_Previews: PreviewProvider {
    static var previews: some View {
        DatePlannerAppView()
    }
}
