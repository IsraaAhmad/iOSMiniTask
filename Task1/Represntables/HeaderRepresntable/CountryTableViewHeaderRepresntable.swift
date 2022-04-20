//
//  CountryTableViewHeaderRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 13/04/2022.
//

import Foundation
import UIKit
///Country Table View Header Represntable
class CountryTableViewHeaderRepresntable : TableViewHeaderFooterRepresntable{
    ///Hieght for view
    var viewHeight: CGFloat
    
    ///reuse ID
    var reuseIdentifier: String
    
    ///Country name
    var countryName: NSAttributedString
    
    ///Background color for view
    var backgroundColor : UIColor
    
    /**
     Defualt initlaizer
     - parameter  countryName: of type String
     */
    init(countryName: String){
        
        /// set country name
        self.countryName = NSAttributedString(string: countryName, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17)])
        
        /// set height for header
        self.viewHeight = CustomHeaderView.getHeight()
        
        ///set reuse ID
        self.reuseIdentifier = CustomHeaderView.getReuseIdentifier()
        
         ///set background
        self.backgroundColor = #colorLiteral(red: 0.8050937057, green: 0.8131842017, blue: 1, alpha: 1)
        
    }
}
