//
//  DialCodeTableViewCell.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit

class DialCodeTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
   
    func setup(representable: DialCodeTableViewCellRepresntable){
        lbl.text = representable.dialCode
    }

    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "DialCodeTableViewCell"
    }

}
