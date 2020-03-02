//
//  ListTableViewCell.swift
//  To Do List
//
//  Created by Heesu Yun on 3/2/20.
//  Copyright © 2020 Heesu Yun. All rights reserved.
//

import UIKit

protocol ListTableViewCellDelegates: class {
    func checkBoxToggle(sender: ListTableViewCell)
    
}

class ListTableViewCell: UITableViewCell {
    
    weak var delegate: ListTableViewCellDelegates?
    


    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func checkToggled(_ sender: UIButton) {
        delegate?.checkBoxToggle(sender: self)
    }
    
}
