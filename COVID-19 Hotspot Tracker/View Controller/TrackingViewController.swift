//
//  TrackingViewController.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

class TrackingViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak private var imgView: UIImageView!
    @IBOutlet weak private var zoneNameLbl: UILabel!
    @IBOutlet weak private var zoneInfoLbl: UILabel!

    // MARK: - View controller life cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Tracking in Progress"
        self.view.backgroundColor = UIColor.themeColorGray
        self.navigationItem.hidesBackButton = true
        
    }
    
}

