//
//  IDTableViewCellRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

class IDTableViewCellRepresntable : TableViewCellRepresntable{
    private(set) var id: String
    
    var cellHeight: CGFloat
    
    var reuseIdentifier: String

     init(id:Int){
         self.id = "#" + String(id)
         
         self.cellHeight = IDTableViewCell.getHeight()
         
         self.reuseIdentifier = IDTableViewCell.getReuseIdentifier()
        
        
    }
}

