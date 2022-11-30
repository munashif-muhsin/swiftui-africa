//
//  VideoListView.swift
//  Africa
//
//  Created by Muhsin Munashif on 28/08/2022.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [Video] = Bundle.main.decode("Data/videos.json")
    
    let hapticImpact =  UIImpactFeedbackGenerator(style: .medium)
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: {
                        VideoPlayerView(videoSelected: video.id, videoTitle: video.name)
                    }) {
                        VideoListItemView(video: video)
                            .padding(.vertical, 10)
                    }
                }
                .listRowInsets(
                    EdgeInsets(
                        top: 0,
                        leading: 16,
                        bottom: 0,
                        trailing: 16
                    )
                )
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } ) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
