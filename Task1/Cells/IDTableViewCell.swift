//
//  IDTableViewCell.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit

class IDTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    
    
    func setup(representable: IDTableViewCellRepresntable){
        lbl.text = representable.id
    }

    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "IDTableViewCell"
    }


}
