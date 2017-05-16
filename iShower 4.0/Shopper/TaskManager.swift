//
//  TaskManager.swift
//  iShower
//


import UIKit

//creating object task manager
var taskMgr: TaskManager = TaskManager()

//creating the constructor, that will auto-initialize the title and caterogy
struct task
{
    var ctgy = "Un-Categorized"
    var lctn = "Un-Located"
}


//creating the addTask function within the class
class TaskManager: NSObject
{
    var tasks = [task]()
    
    func addTask(ctgy: String, lctn: String)
    {
        tasks.append(task(ctgy: ctgy, lctn: lctn))
    }
}