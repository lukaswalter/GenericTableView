//
//  TestViewController.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit

///ViewController to test the Generic-Table implementation
class TestViewController: UIViewController {
    
    var tableView:                      UITableView?
    
    var dataSource:                     SpecificDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame)
        tableView?.register(SpecificCell.self, forCellReuseIdentifier: SpecificCell.reuseIdentifier)
        self.view.addSubview(tableView!)
        
        dataSource = setUpDataSource()
    }
    
    private func setUpDataSource() -> SpecificDataSource {
        let models = [SpecificModel(text: "Hello World"), SpecificModel(text: "This is a generic Table")]
        return SpecificDataSource(tableView: tableView!, array: models)
    }
}

class SpecificDataSource: TableArrayDataSource<SpecificModel, SpecificCell>{}
