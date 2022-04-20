//
//  Countries.swift
//  Task1
//
//  Created by Israa Ahmad on 20/04/2022.
//

import Foundation

///Countries
struct Countries : Decodable{
    ///Countries
    var countries : [Country]
    
    /**
     Customize  initlaizer
     - parameter decode : Decoder
     */
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DataKey.self)
        let insideData = try container.nestedContainer(keyedBy: CountriesKey.self, forKey: .data)
        countries = try insideData.decode([Country].self, forKey: .countries)
    }
    
    ///Data Key
    private enum DataKey: CodingKey {
        case data
    }
    
    ///Countries Key
    private enum CountriesKey: CodingKey {
        case countries
    }
    
    
}
