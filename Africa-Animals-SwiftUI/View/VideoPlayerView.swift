//
//  VideoPlayerView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI
import AVKit
struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var videoSelected : String
    var videoTitle : String
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
        }
        .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .padding()
            ,alignment: .topLeading
        )
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}


// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "cheetah",videoTitle: "Cheetah")
        }
    }
}
