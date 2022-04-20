//
//  nameTableViewCellRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

///Code Table View Cell Reoresntable
class CodeTableViewCellRepresntable : TableViewCellRepresntable{
    
    ///Code
    private(set) var code: String
    
    ///Cell height
    var cellHeight: CGFloat
    
    ///Reuse ID
    var reuseIdentifier: String
    
    /**
     Defualt initlaizer
     - parameter code :String
     */
    init(code:String  ){
         self.code = code
         
         self.cellHeight = CodeTableViewCell.getHeight()
         
         self.reuseIdentifier = CodeTableViewCell.getReuseIdentifier()
        
       
        
    }
}
