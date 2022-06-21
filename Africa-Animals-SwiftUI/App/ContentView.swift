//
//  ContentView.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 20.06.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let animals : [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List{
                CoverImageView()
                    .frame( height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals){animal in
                    AnimalListItemView(animal: animal)
                    
                }
                
            }
            .navigationTitle("Africa Animals")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.stack)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
