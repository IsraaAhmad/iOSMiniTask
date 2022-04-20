//
//  Model.swift
//  Task1
//
//  Created by Israa Ahmad on 19/04/2022.
//

import Foundation
import Alamofire
///Model
class Model {
  
    /**
     Get Countries from API.
     - Parameter completion: Escaping Clouser
     - Returns: Number of rows in section as Int.
     */
    static func getCountries(completion:@escaping (Result<[Country], NSError>) -> Void){
        AF.request(Router.getCountries).responseJSON  { (response) in
            guard let statusCode = response.response?.statusCode
            else {
                completion(.failure(errors.invalidResponse as NSError))
                return
            }
            if statusCode == 200 {
                        do{
                            let results = try JSONDecoder().decode(Countries.self, from: response.data!)
                            completion(.success(results.countries))
                        }
                        catch{
                            completion(.failure(errors.invalidInput as NSError))
                        }
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
