//
//  Constants.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

enum ZoneType {
    case green
    case orange
    case red
    case unknown
    
    func getTitle() -> String {
        
        switch self {
        case .green:
            return "Green Zone"
        case .orange:
            return "Orange Zone"
        case .red:
            return "Red Zone"
        case .unknown:
            return "Unknown"
        }
    }
    
    func getZoneInfo() -> String {
        
        switch self {
        case .green:
            return "Green Zone indicates that there have been no cases in this area. But that doesn\'t mean that you become complacent. Follow the basic guidelines like wearing a mask and not touching your face unnecessarily. Follow the social distancing protocol. Stay safe."
        case .orange:
            return "Orange zone indicates that there have been few COVID 19 cases in this area. This means there is a chance of you getting infected in this area. We suggest you to take all the precautions you can when you visit this area like wearing mask all the time, avoid touching your face and following social distancing protocol. If you can please avoid this place."
            
        case .red:
            return "This is a high risk area which has had a lot of COVID 19 cases recently. You must avoid this area and stay as much far away from it. If you reside in this area you are requested to stay at home and do not leave until absolutely necessary."
            
        case .unknown:
            return ""
        }
    }

    func getTitleColor() -> UIColor {
        
        switch self {
        case .green:
            return UIColor.green
        case .orange:
            return UIColor.orange
        case .red:
            return UIColor.red
        case .unknown:
            return UIColor.black
        }
    }

}

struct Constants {
    
    struct UserDefaultKey {
        static let selectedCityId = "selectedCityId"
    }
        
}
