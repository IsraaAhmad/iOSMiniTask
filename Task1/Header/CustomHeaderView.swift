//
//  CustomHeaderView.swift
//  Task1
//
//  Created by Israa Ahmad on 13/04/2022.
//

import UIKit

class CustomHeaderView: UITableViewHeaderFooterView {

    @IBOutlet weak var lbl: UILabel!
    
 
    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "CustomHeaderView"
    }
    func setup(representable: CountryTableViewHeaderRepresntable){
        self.contentView.backgroundColor = representable.backgroundColor
        lbl.attributedText = representable.countryName
      
        
    }
}
