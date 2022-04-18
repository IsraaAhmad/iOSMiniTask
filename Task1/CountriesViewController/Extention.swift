//
//  Extentions.swift
//  Task1
//
//  Created by Israa Ahmad on 13/04/2022.
//

import Foundation
import UIKit

extension CountriesViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let representable = self.viewModel.representableForRow(at: indexPath) as? CodeTableViewCellRepresntable{
            let cell = tableView.dequeueReusableCell(withIdentifier: CodeTableViewCell.getReuseIdentifier(), for: indexPath) as! CodeTableViewCell
            cell.setup(representable: representable )
            return cell
        }
        if let representable = self.viewModel.representableForRow(at: indexPath) as? IDTableViewCellRepresntable{
            let cell = tableView.dequeueReusableCell(withIdentifier: IDTableViewCell.getReuseIdentifier(), for: indexPath) as! IDTableViewCell
            cell.setup(representable: representable )
            return cell
        }
        if let representable = self.viewModel.representableForRow(at: indexPath) as? DialCodeTableViewCellRepresntable{
            let cell = tableView.dequeueReusableCell(withIdentifier: DialCodeTableViewCell.getReuseIdentifier(), for: indexPath) as! DialCodeTableViewCell
            cell.setup(representable: representable )
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(inSection: section)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRow(at: indexPath, tableView: tableView)
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let represntable = viewModel.reprentableforHeader(section: section) as? CountryTableViewHeaderRepresntable{
            let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: CustomHeaderView.getReuseIdentifier()) as! CustomHeaderView
            headerView.setup(representable: represntable)
            return headerView
        }
        return UIView()
       
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return viewModel.heightForHeaderInSection(section: section)
    }
   
    
    
}

