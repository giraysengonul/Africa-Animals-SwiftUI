//
//  VideoModel.swift
//  Africa-Animals-SwiftUI
//
//  Created by hakkı can şengönül on 21.06.2022.
//

import Foundation


struct Video : Codable , Identifiable {
    
    let id : String
    let name : String
    let headline : String
    
    var thumbnail : String {
        return "video-\(id)"
    }
}
