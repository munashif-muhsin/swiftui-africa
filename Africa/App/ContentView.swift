//
//  ContentView.swift
//  Africa
//
//  Created by Muhsin Munashif on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    var body: some View {
        
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(
                        EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
                    ).padding(.bottom, 12)
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            }
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
