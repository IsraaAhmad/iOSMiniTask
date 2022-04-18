//
//  CountryTableViewHeaderRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 13/04/2022.
//

import Foundation
import UIKit

class CountryTableViewHeaderRepresntable : TableViewHeaderFooterRepresntable{
    var viewHeight: CGFloat
    
    var reuseIdentifier: String
    
    var countryName: NSAttributedString
    
    init(countryName: String){
        

        self.countryName = NSAttributedString(string: countryName, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17)])
        
        self.viewHeight = CustomHeaderView.getHeight()
        
        self.reuseIdentifier = CustomHeaderView.getReuseIdentifier()
        
    }
}
