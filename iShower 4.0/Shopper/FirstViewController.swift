//
//  FirstViewController.swift
//  iShower
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var myTable: UITableView!
    
    @IBOutlet var tblTasks: UITableViewCell!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    //Refreshing the data
    override func viewWillAppear(animated: Bool)
    {
        print("viewDidAppear")
        myTable.reloadData();
    }
    
    //UITableDelegateView
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        //updating the display if in an item is deleted
        if(editingStyle == UITableViewCellEditingStyle.Delete)
        {
            taskMgr.tasks.removeAtIndex(indexPath.row)
            myTable.reloadData();
        }
    }
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return taskMgr.tasks.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].ctgy
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].lctn
        return cell
    }
}