//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Usha Sai Chintha on 18/09/22.
//

import Foundation

struct Video: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String{
        "video-\(id)"
    }
}
