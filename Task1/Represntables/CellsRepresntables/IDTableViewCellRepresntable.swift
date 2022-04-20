//
//  IDTableViewCellRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

///ID Table View Cell Represntable
class IDTableViewCellRepresntable : TableViewCellRepresntable{
    
    ///ID
    private(set) var id: String
    
    ///Cell height
    var cellHeight: CGFloat
    
    ///Reuse ID
    var reuseIdentifier: String

    /**
     Defualt initlaizer
     - parameter id :Int
     */
     init(id:Int){
         self.id = "#" + String(id)
         
         self.cellHeight = IDTableViewCell.getHeight()
         
         self.reuseIdentifier = IDTableViewCell.getReuseIdentifier()
        
        
    }
}

