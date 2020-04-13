//
//  NSObjectProtocol+Extension.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import Foundation

extension NSObjectProtocol {

    var className: String {
        return String(describing: Self.self)
    }
    

    static var className: String {
        return String(describing: self)
    }

}
