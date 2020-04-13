//
//  CityModel.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import Foundation

struct CityModel: Decodable {
    let cityId: Int
    let cityName: String
    let district: String
    let population: Int
}
