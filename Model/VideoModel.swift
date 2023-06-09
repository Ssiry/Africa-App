//
//  VideoModel.swift
//  Africa
//
//  Created by Hassan Assiry on 03/04/2023.
//

import Foundation

struct Video: Codable , Identifiable {
    let id: String
    let name: String
    let headline: String
    // computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
