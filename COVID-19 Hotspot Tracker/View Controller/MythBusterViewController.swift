//
//  MythBusterViewController.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

class MythBusterViewController: UIViewController {
    
    // MARK: - Properties

    var mythBusterList:[MythBuster] = []
    
    @IBOutlet weak private var mythBusterTableView: UITableView! {
        didSet {
            mythBusterTableView.backgroundColor = UIColor.themeColorGray
            mythBusterTableView.dataSource = self
            mythBusterTableView.delegate = self
            mythBusterTableView.rowHeight = UITableView.automaticDimension;
            mythBusterTableView.estimatedRowHeight = 100

        }
    }

    // MARK: - View controller life cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.navigationItem.title = "Myth Buster"
        self.view.backgroundColor = UIColor.themeColorGray

        if let array = GlobalUtility.loadJsonForMythBuster(fromFile: "MythBuster") {
            self.mythBusterList = array
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }

}

extension MythBusterViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mythBusterList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MythBusterTableViewCell", for: indexPath) as! MythBusterTableViewCell
        cell.setupMythBusterCell(mythBuster: mythBusterList[indexPath.row])
        return cell
    }
    
}
