//
//  nameTableViewCellRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

class CodeTableViewCellRepresntable : TableViewCellRepresntable{
    private(set) var code: String
    
    var cellHeight: CGFloat
    
    var reuseIdentifier: String
    

    init(code:String  ){
         self.code = code
         
         self.cellHeight = CodeTableViewCell.getHeight()
         
         self.reuseIdentifier = CodeTableViewCell.getReuseIdentifier()
        
       
        
    }
}
