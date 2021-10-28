//
//  GameDetail.swift
//  ListNavDemo
//
//  Created by cpsc on 10/21/21.
//

import SwiftUI

struct GameDetail: View {
    let selectedGame: Game
    var body: some View {
        Form {
            Section(header: Text("Game Details")) {
                Image(selectedGame.imageName)
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                Text(selectedGame.name)
                    .font(.headline)
                
                Text(selectedGame.description)
                    .font(.body)
                
                HStack {
                    Text("Year released").font(.headline)
                    Spacer()
                    Text(selectedGame.dateReleased)
                }
                Text("Created by: \(selectedGame.creator)")
                    .font(.title3)
                HStack {
                    Text("Free to Play?")
                    Spacer()
                    Image(systemName: selectedGame.isFree ? "checkmark.circle" : "xmark.circle")
                }
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(selectedGame: gameData[0])
    }
}
