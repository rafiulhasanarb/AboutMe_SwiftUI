//
//  EventTask.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 11/8/22.
//

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
