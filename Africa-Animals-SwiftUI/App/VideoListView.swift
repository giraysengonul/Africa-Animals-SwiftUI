//
//  VideoListView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    @State  var videos : [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                        .padding(.vertical,8)
                }
                .navigationTitle("Videos")
                .navigationBarTitleDisplayMode(.inline)
                
            }.listStyle(.insetGrouped)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            videos.shuffle()
                            hapticImpact.impactOccurred()
                        } label: {
                            Image(systemName: "arrow.2.squarepath")
                        }
                        
                    }
                }.navigationViewStyle(.stack)
        }
    }
}


// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
