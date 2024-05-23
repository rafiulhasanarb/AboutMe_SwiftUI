//
//  Item.swift
//  AboutMe_SwiftUI
//
//  Created by rafiul hasan on 13/8/22.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let url: URL
}

extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}
