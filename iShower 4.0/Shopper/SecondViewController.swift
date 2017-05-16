//
//  SecondViewController.swift
//  iShower
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate 
{

    @IBOutlet var txtLctn: UITextField!
    @IBOutlet var txtCtgy: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton)
    {
        taskMgr.addTask(txtCtgy.text!, lctn: txtLctn.text!)
        self.view.endEditing(true)

        txtCtgy.text = ""
        txtLctn.text = ""
        
        let alert = UIAlertView()
        alert.title = ""
        alert.message = "Thought Added!"
        alert.addButtonWithTitle("Ok")
        alert.show()
        //self.tabBarController!.selectedIndex = 0;
    }
    
    //iOS Toutch FXN's
    @IBAction func buttonPressed(sender: AnyObject)
    {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder();
        return true
    }
}