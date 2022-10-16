//
//  CoverImageView.swift
//  Africa
//
//  Created by Muhsin Munashif on 28/08/2022.
//

import SwiftUI

struct CoverImageView: View {
    var body: some View {
        
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
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
