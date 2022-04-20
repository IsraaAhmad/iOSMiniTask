//
//  DialCodeTableViewCellRepresntable.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//
import Foundation
import UIKit

///Dial Code Table View Cell Represntable
class DialCodeTableViewCellRepresntable : TableViewCellRepresntable{
    
    ///Dial code
    private(set) var dialCode: String
    
    ///Cell height
    var cellHeight: CGFloat
    
    ///Resue ID
    var reuseIdentifier: String

    
    /**
     Defualt initlaizer
     - parameter dialCode :String
     */
     init(dialCode:String){
         self.dialCode = dialCode
         
         self.cellHeight = DialCodeTableViewCell.getHeight()
         
         self.reuseIdentifier = DialCodeTableViewCell.getReuseIdentifier()
        
        
    }
}
