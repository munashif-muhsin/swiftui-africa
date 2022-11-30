//
//  VideoPlayerUtility.swift
//  Africa
//
//  Created by Muhsin on 30/11/2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat)
    if(url != nil) {
        videoPlayer = AVPlayer(url: url!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
