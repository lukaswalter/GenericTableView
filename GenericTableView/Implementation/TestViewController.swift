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
    
    var tableView : UITableView?
    
    var dataSource: SpecificDataSource?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.frame)
        tableView?.register(SpecificCell.self, forCellReuseIdentifier: SpecificCell.reuseIdentifier)
        self.view.addSubview(tableView!)
        
        dataSource = setUpDataSource()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setUpDataSource() -> SpecificDataSource {
        let models = [SpecificModel(text: "Hello World"), SpecificModel(text: "This is a generic Table")]
        return SpecificDataSource(tableView: tableView!, array: models)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

class SpecificDataSource: TableArrayDataSource<SpecificModel, SpecificCell>{}
