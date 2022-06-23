//
//  AnimalGridItemView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 23.06.2022.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    let animal : Animal
    
    // MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}


// MARK: - PREVIEW
struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals[3]).previewLayout(.sizeThatFits).padding()
    }
}
