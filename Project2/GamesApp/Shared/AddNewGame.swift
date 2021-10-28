//
//  AddNewGame.swift
//  ListNavDemo
//
//  Created by cpsc on 10/21/21.
//

import SwiftUI

struct AddNewGame: View {
    @StateObject var gameStore: GameStore
    @State private var dateReleased: String = "0"
    @State private var name: String = ""
    @State private var description: String = ""
    @State private var creator: String = ""
    @State private var isFree: Bool = false
    var body: some View {
        Form {
            Section(header: Text("Game Details")) {
                Image(systemName: "controller")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                DataInput(title: "Name", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                DataInput(title: "Year Released", userInput: $dateReleased)
                DataInput(title: "Creator", userInput: $creator)


                Toggle(isOn: $isFree) {
                    Text("Free to play?").font(.headline)
                }.padding()
            }
            Button(action: addNewGame) {
                Text("Add Game")
            }
        }
        
        }
    func addNewGame() {
        let newGame = Game(id: UUID().uuidString,
                         name: name, description: description,
                         dateReleased: dateReleased, creator: creator,
                         isFree: isFree, imageName: "controller" )
        gameStore.games.append(newGame)
    }
}

struct AddNewGame_Previews: PreviewProvider {
    static var previews: some View {
        AddNewGame(gameStore: GameStore(games: gameData))
    }
}

struct DataInput: View {
    var title: String
    @Binding var userInput: String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }

}
