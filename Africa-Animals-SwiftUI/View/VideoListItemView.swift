//
//  VideoListItem.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI

struct VideoListItemView: View {
     // MARK: - PROPERTIES
    let video : Video

    // MARK: - BODY
    var body: some View {
        HStack (spacing : 10){
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable().scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 6)
            }//:ZStack
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.heavy)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                
            }
        }
        
       
    }
}


 // MARK: - PREVIEW
struct VideoListItem_Previews: PreviewProvider {
    static let videos : [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItemView(video: videos[1]).previewLayout(.sizeThatFits).padding()
    }
}
