//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Muhsin on 17/10/2022.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(
                        animal.name,
                        destination: (
                            URL(string: animal.link) ??
                            URL(string: "https://wikipedia.org")
                        )!
                    )
                }
                .foregroundColor(.accentColor)
                
            }
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    
    static let  animals: [Animal] = Bundle.main.decode("Data/animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
