//
//  CityListViewController.swift
//  COVID-19 Hotspot Tracker
//
//  Created by Milan Panchal on 13/04/20.
//  Copyright © 2020 Milan Panhcal. All rights reserved.
//

import UIKit

typealias JsonDictArray = [[String: Any]]

class CityListViewController: UIViewController {
    
    // MARK: - Properties

    var cityList:[CityViewModel] = []
    var selectedCityIndex = -1
    
    @IBOutlet weak private var cityTableView: UITableView! {
        didSet {
            cityTableView.backgroundColor = UIColor.themeColorGray
            cityTableView.dataSource = self
            cityTableView.delegate = self
            cityTableView.estimatedRowHeight = 60.0
        }
    }

    // MARK: - View controller life cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.navigationItem.title = "Select City"
        self.view.backgroundColor = UIColor.themeColorGray

        if let cityArray = GlobalUtility.loadJson(fromFile: "MaharashtraCityList") {
            self.cityList = cityArray
                .sorted(by: { return $0.cityName < $1.cityName })
                .map({return CityViewModel(cityModel: $0)})
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomeViweControllerSegue" {

            guard  selectedCityIndex > -1 else {
                UIAlertController.showAlert("Please Select City", messageString: "Please select your city to find out COVID-19 Hotspots", viewController: self)
                return
            }

            let selectedCityId = cityList[selectedCityIndex].cityId
            UserDefaults.standard.set(selectedCityId, forKey: Constants.UserDefaultKey.selectedCityId)
            UserDefaults.standard.synchronize()
        }
    }
}

extension CityListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CityListTableViewCell.className, for: indexPath) as! CityListTableViewCell
        cell.setCity(cityViewModel: cityList[indexPath.row], isCheckBoxed: (selectedCityIndex == indexPath.row))
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCityIndex = indexPath.row
        tableView.reloadData()
    }
}
