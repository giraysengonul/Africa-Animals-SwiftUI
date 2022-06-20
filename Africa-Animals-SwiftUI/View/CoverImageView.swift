//
//  CoverImageView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    let coverImage : [CoverImage] = Bundle.main.decode("covers.json")
    
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//:Loop
        }//:TabView
        .tabViewStyle(.page)
    }
}




// MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView().previewLayout(.fixed(width: 400, height: 300))
    }
}
