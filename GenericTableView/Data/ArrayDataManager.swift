//
//  ArrayDataManager.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit

public class ArrayDataManager<T>: TableDataManager {
    var models: [[T]] = []
    
    init(array: [[T]]) {
        models = array
    }
    
    // MARK: - TableDataManager
    
    public func numberOfSections() -> Int {
        return models.count
    }
    
    public func numberOfRows(in section: Int) -> Int {
        guard section >= 0 && section < models.count else {
            return 0
        }
        return models[section].count
    }
    
    public func model(at indexPath: IndexPath) -> T? {
        guard indexPath.section >= 0 &&
            indexPath.section < models.count &&
            indexPath.row >= 0 &&
            indexPath.row < models[indexPath.section].count else
        {
            return nil
        }
        return models[indexPath.section][indexPath.row]
    }
}
