//
//  ToDoListManager.swift
//  ToDoListVisionApp
//
//  Created by Davaughn Williams on 3/21/25.
//

import SwiftUI

@Observable
class ToDoListManager {
    
    var tasks: [Task] = []
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func removeAllTask(task: Task) {
        tasks.removeAll()
    }
    
    func removeATask(task: Task) {
        for i in 0..<tasks.count {
            tasks.remove(at: i)
        }
    }
}
