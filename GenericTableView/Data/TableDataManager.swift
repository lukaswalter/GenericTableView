//
//  TableDataManager.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit

public protocol TableDataManager {
    associatedtype T
    
    func numberOfSections() -> Int
    func numberOfRows(in section: Int) -> Int
    func model(at indexPath: IndexPath) -> T?
}
