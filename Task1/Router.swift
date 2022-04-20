//
//  Router.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
    var baseURL: URL {
           return URL(string: "https://gateway.teamworkz.net/core/api/v2/public/countries")!
       }
  case getCountries
    
    var method: HTTPMethod {
      switch self {
      case .getCountries:
        return .get
      }
    }
    
      func asURLRequest() throws -> URLRequest {
            let url = baseURL
            var request = URLRequest(url: url)
            request.method = method
            
            return request
        }
    }
   



