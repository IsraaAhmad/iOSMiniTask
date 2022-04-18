//
//  Router.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
  static let baseURLString = "https://gateway.teamworkz.net/core/api/v2/public/countries"
  case get
    
  func asURLRequest() throws -> URLRequest {
    var method: HTTPMethod {
      switch self {
      case .get:
        return .get
      }
    }
      
    let params: ([String: Any]?) = {
      switch self {
      case .get:
        return nil
      }
    }()
      
    let url = URL(string: Router.baseURLString)!

    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = method.rawValue
    
    let encoding = JSONEncoding.default
    return try encoding.encode(urlRequest, with: params)
      
  }
}


