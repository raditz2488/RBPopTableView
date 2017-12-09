//
//  RBConcreteCell.swift
//  RBPopTableView
//
//  Created by Rohan Bhale on 09/12/17.
//  Copyright © 2017 RB. All rights reserved.
//

import UIKit

class RBConcreteCell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RBConcreteCell: RBConfigurableTableViewCell {
    func configure(with model: RBTableViewCellModel) {
        guard let model = model as? RBConcreteCellModel
        else { fatalError("RBConcreteCell cannot be configured with the given model. Please use an instance of RBConcreteCellModel to configure.") }
        self.textLabel?.text = model.text
        self.detailTextLabel?.text = model.detailText
    }
}
