//
//  ExtarnalWeblinkView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import SwiftUI

struct ExtarnalWeblinkView: View {
    // MARK: - PROPERTIES
    let animal : Animal
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Link(
                        animal.name , destination: URL(string: animal.link) ?? URL(string: "https://hakkicansengonul.github.io")!)
                }.foregroundColor(.accentColor)
                
            }
        }
    }
}



// MARK: - PREVIEW
struct ExtarnalWeblinkView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExtarnalWeblinkView(animal: animals[4]).previewLayout(.sizeThatFits).padding()
    }
}
