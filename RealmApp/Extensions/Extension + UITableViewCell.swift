//
//  Extension + UITableViewCell.swift
//  RealmApp
//
//  Created by Alex on 27.05.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let unfinishedTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.title
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if unfinishedTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = unfinishedTasks.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
