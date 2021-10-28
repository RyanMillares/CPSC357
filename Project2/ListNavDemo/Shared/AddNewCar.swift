//
//  AddNewCar.swift
//  ListNavDemo
//
//  Created by cpsc on 10/21/21.
//

import SwiftUI

struct AddNewCar: View {
    @StateObject var carStore: CarStore
    @State private var isHybrid = false
    @State private var name: String = ""
    @State private var description: String = ""
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                Toggle(isOn: $isHybrid) {
                    Text("Hybrid").font(.headline)
                }.padding()
            }
            Button(action: addNewCar) {
                Text("Add Car")
            }
        }
        
        }
    func addNewCar() {
        let newCar = Car(id: UUID().uuidString,
                         name: name, description: description,
                         isHybrid: isHybrid, imageName: "tesla_model_3" )
        carStore.cars.append(newCar)
    }
}

struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCar(carStore: CarStore(cars: carData))
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