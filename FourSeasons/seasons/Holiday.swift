//
//  Holiday.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 05/05/21.
//

import Foundation


class Holiday: Season {
    var holidayLocation: String?
    
    init(holidayLoc: String, name: String, description: String, time: String, type: SeasonType){
        super.init(name: name, description: description, time: time, type: type, weatherAlert: [])
        self.holidayLocation = holidayLoc
    }
}
