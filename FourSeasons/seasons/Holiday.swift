//
//  Holiday.swift
//  FourSeasons
//
//  Created by Riestiya Zain on 05/05/21.
//

import Foundation


class Holiday: Season {
    var holidayLocation: String?
    var holiday_tag: [String] = []
    
    init(holidayTag: [String], holidayLoc: String, name: String, description: String, time: String, type: SeasonType){
        super.init(name: name, description: description, time: time, type: type, weatherAlert: [])
        self.holidayLocation = holidayLoc
        self.holiday_tag = holidayTag
    }
}
