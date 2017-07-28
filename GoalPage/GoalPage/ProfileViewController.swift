//
//  ProfileViewController.swift
//  GoalPage
//
//  Created by RupalT on 7/28/17.
//  Copyright © 2017 RupalT. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var gradeText: UITextField!
    @IBOutlet weak var gradeLabel: UILabel!
    
    @IBOutlet weak var SatText: UITextField!
    @IBOutlet weak var SatLabel: UILabel!
    
    @IBOutlet weak var gpaTest: UITextField!

    @IBOutlet weak var gpaLabel: UILabel!

    
    @IBAction func save(sender: AnyObject) {
    
        
        //username
        
        NSUserDefaults.standardUserDefaults().setObject(usernameText.text, forKey: "name")
        
        let Name = NSUserDefaults.standardUserDefaults().objectForKey("name")
        
        
        
        
        
        if let userName = Name as? NSString{
            
            usernameLabel.text = String("Username: " + (userName as String))
            
            
            usernameText.text = " "
            
        }
        
        
        
        //grade
        
        NSUserDefaults.standardUserDefaults().setObject(gradeText.text, forKey: "grade")
        
        let grade = NSUserDefaults.standardUserDefaults().objectForKey("grade")
        
        
        
        
        
        if let userGrade = grade as? NSString{
            
            gradeLabel.text = String("Grade: " + (userGrade as String))
            gradeText.text = " "
        }
        
        
        
        //sat
        
        NSUserDefaults.standardUserDefaults().setObject(SatText.text, forKey: "sat")
        
        let sat = NSUserDefaults.standardUserDefaults().objectForKey("sat")
        
        
        
        
        
        if let userSat = sat as? NSString{
            
            SatLabel.text = String("SAT: " + (userSat as String))
            SatText.text = " "
        }
        
        
        
        //gpa
        
        NSUserDefaults.standardUserDefaults().setObject(gpaTest.text, forKey: "gpa")
        
        let gpa = NSUserDefaults.standardUserDefaults().objectForKey("gpa")
        
        
        
        
        
        if let userGpa = gpa as? NSString{
            
            gpaLabel.text = String("GPA: " + (userGpa as String))
            gpaTest.text = " " 
        }
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //username
        
        let Name = NSUserDefaults.standardUserDefaults().objectForKey("name")
        
        
        
        
        
        if let userName = Name as? NSString{
            
            usernameLabel.text = String("Username: " + (userName as String))
            
        }
        
        
        
        //Grade
        
        let grade = NSUserDefaults.standardUserDefaults().objectForKey("grade")
        
        
        
        
        
        if let userGrade = grade as? NSString{
            
            gradeLabel.text = String("Grade: " + (userGrade as String))
            
            
            
        }
        
        
        
        //SAT
        
        let sat = NSUserDefaults.standardUserDefaults().objectForKey("sat")
        
        
        
        
        
        if let userSat = sat as? NSString{
            
            SatLabel.text = String("SAT: " + (userSat as String))
            
            
            
            
            
        }
        
        //GPA
        
        let gpa = NSUserDefaults.standardUserDefaults().objectForKey("gpa")
        
        
        
        
        
        if let userGpa = gpa as? NSString{
            
            gpaLabel.text = String("GPA: " + (userGpa as String))
            
        }
        
    }


    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
