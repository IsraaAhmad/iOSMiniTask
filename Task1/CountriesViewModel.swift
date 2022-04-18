//
//  CountriesViewModel.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

class CountriesViewModel :HarriViewModel {
    
    private var Countries: [Country]
    private var represntables: [SectionRepresntable]
    
    
    init(countries:[Country]){
        self.Countries = countries
        self.represntables = []
        BuildRepresntable()
    }
    
    
    private func BuildRepresntable(){
        
        for country in self.Countries{
            
            let tableSectionRepresntable = SectionRepresntable()
            let codeCell = CodeTableViewCellRepresntable(code: country.code)
            let IDcell = IDTableViewCellRepresntable(id: country.id)
            let DialCell = DialCodeTableViewCellRepresntable(dialCode: country.dial_code)
            tableSectionRepresntable.cellsRepresntables.append(codeCell)
            tableSectionRepresntable.cellsRepresntables.append(IDcell)
            tableSectionRepresntable.cellsRepresntables.append(DialCell)
            let headerSection = CountryTableViewHeaderRepresntable(countryName: country.name)
            tableSectionRepresntable.SectionHeaderRepresntable = headerSection
            self.represntables.append(tableSectionRepresntable)
        }
    }
    
    func numberOfSections() -> Int {
        return self.represntables.count
    }
    
    func numberOfRowsInSection(inSection section: Int) -> Int {
        return represntables[section].cellsRepresntables.count
    }
    func representableForRow(at indexPath: IndexPath) -> TableViewCellRepresntable {
        return self.represntables[indexPath.section].cellsRepresntables[indexPath.row]
    }
    
    func heightForRow(at indexPath: IndexPath , tableView: UITableView) -> CGFloat {
        return representableForRow(at: indexPath).cellHeight
    }
    
    func reprentableforHeader(section: Int) -> TableViewHeaderFooterRepresntable{
        return self.represntables[section].SectionHeaderRepresntable!
    }
    
    func heightForHeaderInSection(section: Int) ->CGFloat {
        return reprentableforHeader(section: section).viewHeight
    }
    
   
    
   
}
