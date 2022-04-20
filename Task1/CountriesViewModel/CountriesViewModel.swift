//
//  CountriesViewModel.swift
//  Task1
//
//  Created by Israa Ahmad on 12/04/2022.
//

import Foundation
import UIKit

/// Countries View Model
class CountriesViewModel :HarriViewModel {
    
    ///Countries
    private var countries: [Country]
    
    ///Represntables
    private var represntables: [SectionRepresntable]
    
    /**
     Defualt initlaizer
     */
    init(){
        self.represntables = []
        self.countries = []
    }
    
    /**
     Update data
     - Parameter countries: array of Country.
     */
    func UpdateDate(countries:[Country]){
        self.countries = countries
        self.represntables = []
        BuildRepresntable()
    }
    
    /**
     Build represntable
     */
    private func BuildRepresntable(){
        for country in self.countries{
            
            let tableSectionRepresntable = SectionRepresntable()
            let codeCell = CodeTableViewCellRepresntable(code: country.code ?? "")
            let IDcell = IDTableViewCellRepresntable(id: country.id ?? 0)
            let DialCell = DialCodeTableViewCellRepresntable(dialCode: country.dialCode ?? "")
            tableSectionRepresntable.cellsRepresntables.append(codeCell)
            tableSectionRepresntable.cellsRepresntables.append(IDcell)
            tableSectionRepresntable.cellsRepresntables.append(DialCell)
            let headerSection = CountryTableViewHeaderRepresntable(countryName: country.name ?? " ")
            tableSectionRepresntable.SectionHeaderRepresntable = headerSection
            self.represntables.append(tableSectionRepresntable)
        }
    }
    /**
     Get number of rows in sections.
     - Parameter section: Section number as Int.
     - Returns: Number of rows in section as Int.
     */
    
    func numberOfSections() -> Int {
        return self.represntables.count
    }
    
    
    /**
     Get number of rows in sections.
     - Parameter section: Section number as Int.
     - Returns: Number of rows in section as Int.
     */
    func numberOfRowsInSection(inSection section: Int) -> Int {
        return represntables[section].cellsRepresntables.count
    }
    
    /**
     Get cell representable at indexPath.
     - Parameter indexPath: Index path.
     - Returns: Cell representable as tableView cell representable.
     */
    func representableForRow(at indexPath: IndexPath) -> TableViewCellRepresntable {
        return self.represntables[indexPath.section].cellsRepresntables[indexPath.row]
    }
    
    
    /**
     Get height of row at indexPath.
     - Parameter indexPath: Index path.
     - Parameter tableView: Table View.
     - Returns: height of row at indexPath as CGFloat.
     */
    func heightForRow(at indexPath: IndexPath , tableView: UITableView) -> CGFloat {
        return representableForRow(at: indexPath).cellHeight
    }
    
    /**
     Get header representable in section.
     - Parameter section: Int.
     - Returns: header representable as tableView header representable.
     */
    func reprentableforHeader(section: Int) -> TableViewHeaderFooterRepresntable{
        
        return self.represntables[section].SectionHeaderRepresntable!
    }
    
    /**
     Get height of row at indexPath.
     - Parameter section: Int.
     - Returns: height of header at section as CGFloat.
     */
    func heightForHeaderInSection(section: Int) ->CGFloat {
        return reprentableforHeader(section: section).viewHeight
    }
    
   
    
   
}
