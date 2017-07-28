//
//  ViewController.swift
//  GoalPage
//
//  Created by RupalT on 7/27/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var items:[String] = []
    //new array of string ~ items ~ is created
    
    var date:[String] = []
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    //number of rows equal to count of array hobbies
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text =  items[indexPath.row] + " - "+date[indexPath.row ]
        return cell
    }
    
    
    
    
    override func viewDidAppear(animated: Bool)
        // to update the table when the first view appears rather than when you re load (open the app)
    {
        let itemsObject = NSUserDefaults().objectForKey("items")
        // itemsObject holds the value for the key items
        
        let dateObject = NSUserDefaults().objectForKey("date")
        
        
        if let tempItems = itemsObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            items = tempItems
            //set tempItems equal to items
            
            print(items)
            
        }
        
        if let tempDate = dateObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            date = tempDate
            //set tempItems equal to items
            
            print(date)
            
        }
        
        table.reloadData()
    }
    
    
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
        // to delete an item
    {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            items.removeAtIndex(indexPath.row)
            date.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            table.reloadData()
            
            NSUserDefaults().setObject(items, forKey: "items")
            NSUserDefaults().setObject(date, forKey: "date")
            // sets the array items as the value for the key "items"
        }
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

