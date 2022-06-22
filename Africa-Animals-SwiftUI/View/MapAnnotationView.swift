//
//  MapAnnotationView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 22.06.2022.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    var location : NationalParkLocation
    @State private var animation : Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            Circle()
                .stroke(Color.accentColor)
                .frame(width: 52, height: 52, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }//:ZStack
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
        
    }
}

// MARK: - PREVIEW
struct MapAnnotationView_Previews: PreviewProvider {
    static let locations : [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[1]).previewLayout(.sizeThatFits)
            .padding()
    }
}
