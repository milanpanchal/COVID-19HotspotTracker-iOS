//
//  MythBusterTableViewCell.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

class MythBusterTableViewCell: UITableViewCell {

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

        self.textLabel?.numberOfLines = 0
        self.detailTextLabel?.numberOfLines = 0

        self.textLabel?.font = UIFont.systemFont(ofSize: 16)
        self.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 14)

    }

    func setupMythBusterCell(mythBuster: MythBuster) {
        setupCell()
        
        self.textLabel?.text = "\(mythBuster.que)"
        self.detailTextLabel?.text = "Ans: \(mythBuster.ans)"
    }
    
}
