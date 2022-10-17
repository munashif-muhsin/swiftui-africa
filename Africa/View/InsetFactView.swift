//
//  InsetFactView.swift
//  Africa
//
//  Created by Muhsin on 17/10/2022.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                        .multilineTextAlignment(.center)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)

        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let  animals: [Animal] = Bundle.main.decode("Data/animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
