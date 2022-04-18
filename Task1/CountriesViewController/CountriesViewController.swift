//
//  CountriesViewController.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit
import Alamofire

class CountriesViewController: UIViewController {
    
    var results : [Country] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    private (set) var viewModel: CountriesViewModel!

    override func viewDidLoad() {
        print("hh")
        fetchData() { (status) in
         switch status {
          case .success(let data):
            self.viewModel = CountriesViewModel(countries: data)
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.register(UINib(nibName: "CustomHeaderView", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "CustomHeaderView")
            self.tableView.reloadData()
             

         case .failure(let Failure):
            print(Failure)
      
      }
    }
    }
    
    func fetchData(completion:@escaping (Result<[Country], NSError>) -> Void) {
        AF.request(Router.get).responseJSON  { (response) in
            guard let statusCode = response.response?.statusCode
            else {
                completion(.failure(errors.invalidResponse as NSError))
                return
            }
            if statusCode == 200 {
                guard let dataBack = response.value as? [String:Any] else {
                   completion(.failure(errors.invalidInput as NSError))
                    return }
                guard let countriesData = dataBack["data"] as? [String: Any] else {
                    completion(.failure(errors.invalidInput as NSError))
                    return }
                guard let countries = countriesData["countries"] as? [[String: Any]] else {
                    completion(.failure(errors.invalidResponse as NSError))
                    return
                }
                var data : [Country] = []
                for country in countries{
                   let code = country["code"] as? String ?? " "
                   let dial_code = country["dial_code"] as? String ?? " "
                   let id = country["id"] as? Int ?? 0
                   let name = country["name"] as? String ?? " "
                   let model = Country(code: code, dial_code: dial_code, id: id, name: name)
                   data.append(model)
                                }
                completion(.success(data))
                
            }
            else{
                completion(.failure(errors.invalidStatusCode as NSError))
            }
            
        }

        
    }
  
}

enum errors:Error{
    case invalidResponse
    case invalidStatusCode
    case invalidInput
}

