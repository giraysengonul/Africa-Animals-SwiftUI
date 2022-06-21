//
//  AnimalModel.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import Foundation

struct Animal : Codable , Identifiable {
    
    let id : String
    let name : String
    let headline: String
    let description : String
    let link : String
    let image : String
    let gallery : [String]
    let fact : [String]   
}
