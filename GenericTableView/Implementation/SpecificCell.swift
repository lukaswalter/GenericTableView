//
//  SpecificCell.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit

///Very basic UITableViewCell-implementation that loads a text on textLabel
class SpecificCell: UITableViewCell, ConfigurableCell {
    
    // MARK: - ConfigurableCell
    func loadModel(_ model: SpecificModel) {
        textLabel?.text = model.text
    }
}
