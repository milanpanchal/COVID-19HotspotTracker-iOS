//
//  CityViewModel.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import Foundation

struct CityViewModel {

    private let cityModel: CityModel
    
    public init(cityModel: CityModel) {
      self.cityModel = cityModel
    }

    public var cityId: Int {
        return cityModel.cityId
    }
    
    public var name: String {
        return cityModel.cityName
    }

    public var districtWithPopulation: String {
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .decimal
        currencyFormatter.locale = Locale(identifier: "en_IN")
        
        _ = currencyFormatter.string(from: NSNumber(value: cityModel.population))
//        return "District: \(cityModel.district) | Population: \(population ?? "-")"
        return "District: \(cityModel.district)"
    }
}
