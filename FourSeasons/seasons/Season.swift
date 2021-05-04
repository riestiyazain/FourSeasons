//
//  Season.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 01/05/21.
//

import Foundation

enum SeasonType {
    case Spring
    case Summer
    case Autumn
    case Winter
}

class Season {
    var Name = ""
    var Description = ""
    var Time = ""
    var season_type: SeasonType
    
    init(name: String, description: String, time: String, type: SeasonType) {
        Name =  name
        Description = description
        Time = time
        season_type = type
    }
}
