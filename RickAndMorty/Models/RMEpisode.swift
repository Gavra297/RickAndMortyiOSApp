//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by L G on 8. 4. 2025..
//

import Foundation


struct RMEpisode : Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
