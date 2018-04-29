//
//  ReusableCell.swift
//  GenericTableView
//
//  Created by Lukas Walter on 29.04.18.
//  Copyright © 2018 Lukas Walter. All rights reserved.
//

import UIKit

public protocol ReusableCell {
    static var reuseIdentifier: String {get}
}

public extension ReusableCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
