//
//  CoverImageView.swift
//  Africa
//
//  Created by Muhsin Munashif on 28/08/2022.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("Data/covers.json")
    
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        
       
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
