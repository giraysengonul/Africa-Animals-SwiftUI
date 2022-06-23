//
//  GalleryView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    @State private var selectedAnimal : String = "lion"
    let animals : [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    //Simple grid
    //    let gridLayout : [GridItem] = [
    //        GridItem(.flexible()),
    //        GridItem(.flexible()),
    //        GridItem(.flexible())
    //    ]
    //efficient grid defination
    //    let gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    //Dynamic Grid Layout
    @State private var gridLayout : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    @State private var gridColumn : Double = 3.0
    
    func gridSwitch()  {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack (alignment: .center, spacing: 30){
                // MARK: - Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white,lineWidth: 10))
                // MARK: - Slider
                Slider(value: $gridColumn, in: 2...4,step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { newValue in
                        withAnimation(.easeIn) {
                            gridSwitch()
                        }
                    }
                // MARK: - Grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white,lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }
                        
                    }
                }//:Grid
                
                .onAppear {
                    gridSwitch()
                }
            }//:Vstack
            .padding(.horizontal,10)
            .padding(.vertical,50)
            
        }//:Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEW
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
