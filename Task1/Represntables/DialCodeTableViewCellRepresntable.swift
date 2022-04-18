//
//  DialCodeTableViewCellRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//
import Foundation
import UIKit

class DialCodeTableViewCellRepresntable : TableViewCellRepresntable{
    private(set) var dialCode: String
    
    var cellHeight: CGFloat
    
    var reuseIdentifier: String

     init(dialCode:String){
         self.dialCode = dialCode
         
         self.cellHeight = DialCodeTableViewCell.getHeight()
         
         self.reuseIdentifier = DialCodeTableViewCell.getReuseIdentifier()
        
        
    }
}
