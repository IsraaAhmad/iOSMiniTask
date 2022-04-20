//
//  CountriesViewController.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit
import Alamofire

class CountriesViewController: UIViewController {
    ///Result
    var results : [Country] = []
    
    ///Table view
    @IBOutlet weak var tableView: UITableView!
    
    ///Countries model view
    private (set) var viewModel: CountriesViewModel!
    
    /**
     View did load.
     */
    override func viewDidLoad() {
        self.viewModel = CountriesViewModel()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "CustomHeaderView", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "CustomHeaderView")
        self.tableView.sectionHeaderTopPadding = 0
        FetchData()
    }
    
    
    /**
     Fetch data from API
     */
    func FetchData(){
        Model.getCountries{ (status) in
            switch status {
            case .success(let data):
                self.viewModel.UpdateDate(countries: data)
                self.tableView.reloadData()


            case .failure(let Failure):
                print(Failure)

            }
        }
    }
    
    
    
    
}



