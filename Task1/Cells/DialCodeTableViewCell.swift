//
//  DialCodeTableViewCell.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit

class DialCodeTableViewCell: UITableViewCell {
    
    //Label for Dial Code
    @IBOutlet weak var lbl: UILabel!
   
    
    /** Setup
    - Parameter representable: Dial Code Table View Cell Represntable
     */
    func setup(representable: DialCodeTableViewCellRepresntable){
        //set Dial code label text
        lbl.text = representable.dialCode
    }

    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "DialCodeTableViewCell"
    }
        

}
