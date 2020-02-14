//
//  ToDoItem.swift
//  To Do List
//
//  Created by Heesu Yun on 2/7/20.
//  Copyright © 2020 Heesu Yun. All rights reserved.
//

import Foundation

struct ToDoItem: Codable {
    var name: String
    var date: Date
    var notes: String
    var reminderSet: Bool
}
