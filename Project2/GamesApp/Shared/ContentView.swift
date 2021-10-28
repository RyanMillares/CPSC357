//
//  ContentView.swift
//  Shared
//
//  Created by cpsc on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var gameStore : GameStore = GameStore(games: gameData)
    
    var body: some View {
        
        NavigationView {
            
            List {
                ForEach (gameStore.games) { game in
                    ListCell(game: game)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("Nostalgic 2010s Games"))
            .navigationBarItems(leading: NavigationLink(destination: AddNewGame(gameStore: self.gameStore)) {
            Text("Add")
            .foregroundColor(.blue)
            }, trailing: EditButton())
        }
        
    }
    func deleteItems(at offsets: IndexSet) {
        gameStore.games.remove(atOffsets: offsets)
    }
    func moveItems(from source: IndexSet, to destination: Int) {
        gameStore.games.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListCell: View {
    
    var game: Game
    var body: some View {
        NavigationLink(destination: GameDetail(selectedGame: game)) {
            HStack {
                Image(game.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(game.name)
            }
        }
        
    }
}
