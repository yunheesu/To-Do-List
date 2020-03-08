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

    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
        weak var delegate: ListTableViewCellDelegates?
    
    var toDoItem: ToDoItem! {
        didSet{
            nameLabel.text = toDoItem.name
            checkBoxButton.isSelected = toDoItem.completed
        }
    }
    
    @IBAction func checkToggled(_ sender: UIButton) {
        delegate?.checkBoxToggle(sender: self)
    }
    
}
