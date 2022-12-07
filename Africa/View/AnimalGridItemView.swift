//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Muhsin on 07/12/2022.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("Data/animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
