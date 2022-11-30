//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Muhsin on 30/11/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let videoSelected: String
    let videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(
                player: playVideo(
                    fileName: "Video/\(videoSelected)",
                    fileFormat: "mp4"
                )
            ) {
                
            }
            .overlay(alignment: .topLeading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.leading, 8)
            }
        }
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(
                videoSelected: "lion",
                videoTitle: "Lion"
            )
        }
    }
}
