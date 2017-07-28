//
//  addGoalViewController.swift
//  GoalPage
//
//  Created by RupalT on 7/27/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class addGoalViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    func datePickerChanged(datePicker:UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        let strDate = dateFormatter.stringFromDate(datePicker.date)
        dateLabel.text = strDate
    }
    
    
    
    
    
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func save(sender: AnyObject) {
        
        let lenght = itemTextField.text!.characters.count
        
        if lenght > 30 {
            itemTextField.text = "Too long. Delete & type a shorter goal"
        }
        /* This is for
        ITEMS
        ITEMS */
        
        
        
            let itemsObject = NSUserDefaults().objectForKey("items")
            // itemsObject holds the value for the key items
            
            var items:[String]
            //new array of string ~ items ~ is created
            
            if let tempItems = itemsObject as? [String] {
                //if tems object is an array of strin, set it equal to tempItems
                
                items = tempItems
                //set tempItems equal to items
                
                items.append(itemTextField.text!)
                //append text in text fireld to items
                
                print(items)
                
                
            } else {
                
                items = [itemTextField.text!]
                //else set items equal to the text in textfield
                
            }
            
            NSUserDefaults().setObject(items, forKey: "items")
            // sets the array items as the value for the key "items"
            
            
            itemTextField.text = ""
            // sets itemsTextField to nothing
            
            
            
            
            
            /* This is for 
            DATE
            DATE */
        
        
        
        let dateObject = NSUserDefaults().objectForKey("date")
        
        var date:[String]
        
        
        if let tempDate = dateObject as? [String] {
            //if tems object is an array of strin, set it equal to tempItems
            
            date = tempDate
            //set tempItems equal to items
            
            date.append(dateLabel.text!)
            //append text in text fireld to items
            
            
        }
        else {
            date = [dateLabel.text!]
            //else set items equal to the text in textfield
            
        }
        
        NSUserDefaults().setObject(date, forKey: "date")
        // sets the array items as the value for the key "items"
        
        print(date)
//
        
        
        
        
        
        
    }
    
    // to make the keyboard disappear when touched elsewhere and (second) to make keyboard reappear
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.addTarget(self, action: Selector("datePickerChanged:"), forControlEvents: UIControlEvents.ValueChanged)
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    

}
