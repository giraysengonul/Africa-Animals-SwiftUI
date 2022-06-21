//
//  InsetFactView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    let animal : Animal
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                }
            }//:TabView
            .tabViewStyle(.page)
            .frame( minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}


// MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[4]).previewLayout(.sizeThatFits)
            .padding()
    }
}
