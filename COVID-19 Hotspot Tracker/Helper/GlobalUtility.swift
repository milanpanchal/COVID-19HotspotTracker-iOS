//
//  GlobalUtility.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import Foundation
import UIKit


class GlobalUtility: NSObject {
    
    static var userAgent: String = {
        
        let platformWithVersion = "iOS: \(UIDevice.current.systemVersion)"
        let deviceModel = "Model: \(UIDevice.current.modelName)"
        let appVersion = "App Version: \(GlobalUtility.appCurrentVersion).\(GlobalUtility.appCurrentBuild)"
        
        return "\(platformWithVersion); \(deviceModel); \(appVersion)"
    }()
    
    
    static var appCurrentVersion: String = {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        } else {
            return ""
        }
    }()
    
    static var appCurrentBuild: String = {
        if let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            return buildNumber
        } else {
            return ""
        }
    }()
    
    
    class func loadJson(fromFile fileName: String) -> [CityModel]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([CityModel].self, from: data)
                return jsonData
            } catch {
                print("Error!! Unable to parse  \(fileName).json")
            }
        }
        return nil
    }
    
    class func loadJsonForMythBuster(fromFile fileName: String) -> [MythBuster]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([MythBuster].self, from: data)
                return jsonData
            } catch {
                print("Error!! Unable to parse  \(fileName).json")
            }
        }
        return nil
    }

    
    class func callNumber(phoneNumber:String) {
        
        if let phoneCallURL = URL(string: "tel://\(phoneNumber)") {
            
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                application.open(phoneCallURL, options: [:], completionHandler: nil)
            }
        }
    }


    class func getDeviceIdentifier() -> String {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }

}
