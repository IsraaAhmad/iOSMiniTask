//
//  File.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

protocol HarriViewModel{
    
    func numberOfSections() -> Int
    
    func numberOfRowsInSection(inSection section: Int) -> Int
    
    func representableForRow(at indexPath: IndexPath) -> TableViewCellRepresntable
    
    func heightForRow(at indexPath: IndexPath , tableView: UITableView) -> CGFloat
    
    func reprentableforHeader(section: Int) -> TableViewHeaderFooterRepresntable
    
    func heightForHeaderInSection(section: Int) ->CGFloat
}
