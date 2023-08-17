//
//  SongMondels.swift
//  desafioSpotfy
//
//  Created by Student07 on 01/08/23.
//

import Foundation


struct Suggestions: Identifiable{
    
    var id: Int
    var albumCover: String
    var albumName: String
}

struct Song: Identifiable{
    
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
