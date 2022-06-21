//
//  HeadingView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    var headingImage : String
    var headingText : String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .bold()
        }
        .padding(.vertical)
    }
}

// MARK: - PREVIEW
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Pictures").previewLayout(.sizeThatFits)
            .padding()
    }
}
