//
//  SecondViewController.swift
//  GroupProfile2
//
//  Created by Clint Jellesed on 4/27/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var CBSwitch: UISwitch!
    @IBOutlet weak var CBLabel: UILabel!
    @IBOutlet weak var MUSwitch: UISwitch!
    @IBAction func musicToggle(sender: UISwitch) {
        let prefs = NSUserDefaults.standardUserDefaults()
        if(MUSwitch.on)
        {
            prefs.setBool(true, forKey: "MusicToggle")
            musicLabel.text = "Music Default: On"
        }
        else
        {
            prefs.setBool(false, forKey: "MusicToggle")
            musicLabel.text = "Music Default: Off"
        }
        let alert = UIAlertController(title: "Settings Saved", message: "Please restart application", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    @IBAction func CBToggle(sender: UISwitch) {
        let prefs = NSUserDefaults.standardUserDefaults()
        if (CBSwitch.on) {
            prefs.setBool(true, forKey: "ColorBlind")
            CBLabel.text = "Color Blind Enabled"
            self.view.backgroundColor = UIColor.whiteColor()
            
            let alert = UIAlertController(title: "Settings Saved", message: "Please restart application", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else {
            prefs.setBool(false, forKey: "ColorBlind")
            CBLabel.text = "Color Blind Disabled"
            self.view.backgroundColor = UIColor.lightGrayColor()
            
            let alert = UIAlertController(title: "Settings Saved", message: "Please restart application", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    //@IBOutlet weak var CBLabel: UILabel!
//    @IBAction func CBTogglee(sender: AnyObject) {
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let prefs = NSUserDefaults.standardUserDefaults()
        
        if prefs.boolForKey("ColorBlind") {
            CBLabel.text = "Color Blind Enabled"
            CBSwitch.setOn(true, animated: true)
            self.view.backgroundColor = UIColor.whiteColor()
        }
        else {
            CBLabel.text = "Color Blind Disabled"
            CBSwitch.setOn(false, animated: true)
            self.view.backgroundColor = UIColor.lightGrayColor()
        }
        
        if prefs.boolForKey("MusicToggle")
        {
            MUSwitch.setOn(true, animated: true)
            musicLabel.text = "Music Default: On"
        }
        else {
            MUSwitch.setOn(false, animated: true)
            musicLabel.text = "Music Default: Off"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

