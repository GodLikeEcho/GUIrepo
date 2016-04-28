//
//  FirstViewController.swift
//  GroupProfile2
//
//  Created by Clint Jellesed on 4/27/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let prefs = NSUserDefaults.standardUserDefaults()
        
        if prefs.boolForKey("ColorBlind") {
            self.view.backgroundColor = UIColor.whiteColor()
        }
        else {
            self.view.backgroundColor = UIColor.lightGrayColor()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

