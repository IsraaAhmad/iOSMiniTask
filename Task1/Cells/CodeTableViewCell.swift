//
//  CountryTableViewCell.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit

class CodeTableViewCell: UITableViewCell {
    
    //Code label
    @IBOutlet weak var lbl: UILabel!
    
    
    /** Setup
    - Parameter representable:  Code Table View Cell Represntable
     */
    func setup(representable: CodeTableViewCellRepresntable){
        //set Code Label text
        lbl.text = representable.code
    }

    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "CodeTableViewCell"
    }

}
