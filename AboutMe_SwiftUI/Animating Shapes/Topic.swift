//
//  Topic.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 14/8/22.
//

import SwiftUI

struct Topic: Identifiable, Hashable {
    var id : UUID = UUID()
    var title : String
    var description: String
    var systemSymbol : String
    var destination : Destination
}
