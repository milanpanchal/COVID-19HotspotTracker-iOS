//
//  HomeViweController.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

class HomeViweController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak private var startTrackingView: UIView!
    @IBOutlet weak private var affectedPlacesView: UIView!

    // MARK: - View controller life cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Home"
        self.view.backgroundColor = UIColor.themeColorGray
        self.navigationItem.hidesBackButton = true
        
        startTrackingView.addShadow()
        affectedPlacesView.addShadow()

    }
    
}

