//
//  RBTableViewModel.swift
//  RBPopTableView
//
//  Created by Rohan Bhale on 09/12/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

protocol RBTableViewModel {
    var cellModels:[[RBTableViewCellModel]] { get }
    func configure(tableView: UITableView)
    static func demoModel() -> RBTableViewModel
}

extension RBTableViewModel {
    var numberOfSections: Int {
        return cellModels.count
    }
    
    func numberOfRows(in section: Int) -> Int {
        return cellModels[section].count
    }
    
    func cellModel(at indexPath: IndexPath) -> RBTableViewCellModel {
        return cellModels[indexPath.section][indexPath.row]
    }
}
