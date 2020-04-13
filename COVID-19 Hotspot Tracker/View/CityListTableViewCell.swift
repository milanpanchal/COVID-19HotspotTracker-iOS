//
//  CityListTableViewCell.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

class CityListTableViewCell: UITableViewCell {

    // MARK: - UITableViewCell methods

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    // MARK: - User defined methods
    
    fileprivate func setupCell() {

        self.backgroundColor = UIColor.themeColorGray
    }

    func setCity(cityViewModel: CityViewModel, isCheckBoxed: Bool) {
        setupCell()
        
        self.textLabel?.text = cityViewModel.name
        self.detailTextLabel?.text = cityViewModel.districtWithPopulation
        self.accessoryType = isCheckBoxed ? .checkmark : .none
    }
    
}
