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
    
    var zoneType: ZoneType = .unknown
    
    // MARK: - View controller life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Tracking in Progress"
        self.view.backgroundColor = UIColor.themeColorGray
        
        let list:[ZoneType] = [.red, .orange, .green]
        zoneType = list.randomElement() ?? .unknown
        
        self.imgView.tintColor = zoneType.getTitleColor()
        self.zoneNameLbl.text = zoneType.getTitle()
        self.zoneNameLbl.textColor = zoneType.getTitleColor()
        self.zoneInfoLbl.text = zoneType.getZoneInfo()
    }
    
    // MARK: - User defined methods

    @IBAction func didTapOnStopTrackingBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

