//
//  UIAlertController+Extension.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    class func showAlert(_ titleString: String?, messageString: String?, viewController: UIViewController) {
        
        let alertController = UIAlertController(title: titleString, message: messageString, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default,handler: nil))
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    class func showServerError(viewController: UIViewController) {
        UIAlertController.showAlert("Error", messageString: "Oops! Something went wrong, please try again later", viewController: viewController)
    }
    
    class func showError(errorMessage: String, viewController: UIViewController) {
        UIAlertController.showAlert("Error", messageString: errorMessage, viewController: viewController)
    }
    
    class func showAllFieldsRequireAlert(viewController: UIViewController) {
        UIAlertController.showAlert("Alert", messageString: "All fields are mandatory. Please fill missing fields and continue.", viewController: viewController)
    }
    
}
