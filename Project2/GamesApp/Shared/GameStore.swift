//
//  GameStore.swift
//  ListNavDemo
//
//  Created by cpsc on 10/21/21.
//

import Foundation
import SwiftUI
import Combine
class GameStore : ObservableObject {
    
    @Published var games: [Game]
    
    init (games: [Game] = []) {
        self.games = games
    }
}
