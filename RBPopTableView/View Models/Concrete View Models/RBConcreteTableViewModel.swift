//
//  RBConcreteTableViewModel.swift
//  RBPopTableView
//
//  Created by Rohan Bhale on 09/12/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

struct RBConcreteTableViewModel: RBTableViewModel {
    var cellModels: [[RBTableViewCellModel]] = []
    
    func configure(tableView: UITableView) {
        tableView.register(RBConcreteCell.self, forCellReuseIdentifier: RBConcreteCellModel.concreteCellIdentifier)
    }
    
    static func demoModel() -> RBTableViewModel {
        var model = RBConcreteTableViewModel()
        let cellModels:[RBTableViewCellModel] = [RBConcreteCellModel.demoModel(),RBConcreteCellModel.demoModel(),RBConcreteCellModel.demoModel()]
        model.cellModels.append(cellModels)
        return model
    }
}

