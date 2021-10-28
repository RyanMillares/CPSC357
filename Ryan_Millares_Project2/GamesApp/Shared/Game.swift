//
//  Game.swift
//  ListNavDemo
//
//  Created by cpsc on 10/21/21.
//

import Foundation
import SwiftUI
struct Game : Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var dateReleased: String
    var creator: String
    var isFree: Bool
    var imageName: String
}
