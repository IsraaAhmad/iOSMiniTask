//
//  IDTableViewCell.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import UIKit

class IDTableViewCell: UITableViewCell {
    

    //Label for ID
    @IBOutlet weak var lbl: UILabel!
    
    /** Setup
    - Parameter representable:  ID Table View Cell Represntable
     */
    func setup(representable: IDTableViewCellRepresntable){
       //set ID label text
        lbl.text = representable.id
    }

    
    class func getHeight() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    class func getReuseIdentifier() -> String {
        return "IDTableViewCell"
    }


}
