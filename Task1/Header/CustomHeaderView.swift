//
//  CustomHeaderView.swift
//  Task1
//
//  Created by Israa Ahmad on 13/04/2022.
//

import UIKit

class CustomHeaderView: UITableViewHeaderFooterView {
    ///Label for name
    @IBOutlet weak var lbl: UILabel!
    
 
    /**
     Get height for header
     - returns : height for view as CGFloat :
     */
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    /**
     Get reuse ID for header
     - returns :  : reuse ID as String
     */
    class func getReuseIdentifier() -> String {
        return "CustomHeaderView"
    }
    
    /**
     Setup the header view
     - parameter : representable :
     */
    
    func setup(representable: CountryTableViewHeaderRepresntable){
        self.contentView.backgroundColor = representable.backgroundColor
        lbl.attributedText = representable.countryName
      
        
    }
}
