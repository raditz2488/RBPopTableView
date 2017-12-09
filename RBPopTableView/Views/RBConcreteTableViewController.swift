//
//  RBConcreteTableViewController.swift
//  RBPopTableView
//
//  Created by Rohan Bhale on 09/12/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

class RBConcreteTableViewController: UITableViewController {
    var tableViewModel:RBTableViewModel = RBConcreteTableViewModel.demoModel()
    
    override func viewDidLoad() {
        tableViewModel.configure(tableView: tableView)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.numberOfRows(in: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tableViewModel.cellModel(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: model.identifier, for: indexPath)
        guard let configurableCell = cell as? RBConfigurableTableViewCell else { fatalError("Cell is not configurable") }
        configurableCell.configure(with: model)
        return cell
    }
}
