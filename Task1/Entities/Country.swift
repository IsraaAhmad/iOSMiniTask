//
//  Countries.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation

///Country
struct Country : Decodable {
    
    ///Code
    var code: String?
    
    ///Dial Code
    var dialCode: String?
    
    ///ID
    var id: Int?
    
    ///Name
    var name: String?
    
    
    
    ///Codeing Keys
    enum CodingKeys: String, CodingKey {
        case code
        case dialCode = "dial_code"
        case id
        case name
    }
    
}





