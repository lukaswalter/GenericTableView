//
//  TableArrayDataSource.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit

open class TableArrayDataSource<T, Cell: UITableViewCell>: TableDataSource<ArrayDataManager<T>, Cell>
    where Cell: ConfigurableCell, Cell.T == T {

    public convenience init(tableView: UITableView, array: [T]) {
        self.init(tableView: tableView, array: [array])
    }
    
    public init(tableView: UITableView, array: [[T]]) {
        let dataManager = ArrayDataManager(array: array)
        super.init(tableView: tableView, dataManager: dataManager)
    }
    
    public func model(at indexPath: IndexPath) -> T? {
        return dataManager.model(at: indexPath)
    }
}
