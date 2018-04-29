//
//  TableDataSource.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit
import Foundation

open class TableDataSource<DataManager: TableDataManager, Cell: UITableViewCell>:
    NSObject,
    UITableViewDataSource,
    UITableViewDelegate
    where Cell: ConfigurableCell, DataManager.T == Cell.T {
    
    let dataManager:                               DataManager
    let tableView:                              UITableView
    public var tableSelectionHandler:           TableSelectionHandler?
    
    init(tableView: UITableView, dataManager: DataManager) {
        self.tableView = tableView
        self.dataManager = dataManager
        super.init()
        setUp()
    }
    
    func setUp() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDataSource
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return dataManager.numberOfSections()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.numberOfRows(in: section)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.reuseIdentifier,
                                                            for: indexPath) as? Cell else {
                                                                return UITableViewCell()
        }
        let model = dataManager.model(at: indexPath)
        if let model = model {
            cell.loadModel(model)
        }
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableSelectionHandler?(indexPath)
    }
}
