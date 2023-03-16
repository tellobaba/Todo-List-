//
//  Task.swift
//  Todo List
//
//  Created by Oluwatomiwa on 16/03/2023.
//

import Foundation

struct Task: Identifiable {
    
    var id = UUID()
    var title: String
    
    static func getDummyTasks() -> [Task]{
         var tasks = [Task]()
        
        tasks.append(Task(title: "Morning Exercise"))
        tasks.append(Task(title: "Checks Emails"))
        tasks.append(Task(title: "Morning Standup"))
        tasks.append(Task(title: "Code"))
        tasks.append(Task(title: "Dinner"))
        
        return tasks
    }
}
