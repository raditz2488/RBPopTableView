//
//  RBConcreteCellModel.swift
//  RBPopTableView
//
//  Created by Rohan Bhale on 09/12/17.
//  Copyright © 2017 RB. All rights reserved.
//

import Foundation

struct RBConcreteCellModel {
    static let concreteCellIdentifier: String = {
        return "RBConcreteCellModel"
    }()
    
    var text: String
    var detailText: String
}

extension RBConcreteCellModel: RBTableViewCellModel {
    var identifier: String {
        return RBConcreteCellModel.concreteCellIdentifier
    }
    
    static func demoModel() -> RBTableViewCellModel {
        return RBConcreteCellModel(text: "Hey main text.", detailText: "This is detailed text.")
    }
}
