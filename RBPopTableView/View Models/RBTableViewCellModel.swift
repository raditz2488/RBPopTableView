//
//  File.swift
//  RBPopTableView
//
//  Created by Rohan Bhale on 09/12/17.
//  Copyright © 2017 RB. All rights reserved.
//

import Foundation

protocol RBTableViewCellModel {
    var identifier: String { get }
    static func demoModel() -> RBTableViewCellModel
}
