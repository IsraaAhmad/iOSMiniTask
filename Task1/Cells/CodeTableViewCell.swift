//
//  CountryTableViewCell.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit

class CodeTableViewCell: UITableViewCell {
    @IBOutlet weak var lbl: UILabel!
    
    func setup(representable: CodeTableViewCellRepresntable){
        lbl.text = representable.code
    }

    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "CodeTableViewCell"
    }

}
