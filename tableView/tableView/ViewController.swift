//
//  ViewController.swift
//  tableView
//
//  Created by Clint Jellesed on 6/2/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var PausePlayToggle: UISegmentedControl!
    @IBAction func PausePlay(sender: UISegmentedControl) {
        let prefs = NSUserDefaults.standardUserDefaults()
        if prefs.boolForKey("MusicToggle") == false
        {
            let alert = UIAlertController(title: "Attention", message: "Please enable music in the settings tab", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

        }
        else
        {

            if sender.selectedSegmentIndex == 0 {
                backgroundMusicPlayer.play()
            }
            
            else if sender.selectedSegmentIndex == 1 {
                backgroundMusicPlayer.pause()
            }
        }
    }
    
    var backgroundMusicPlayer = AVAudioPlayer()
    
    @IBOutlet weak var enterText: UITextField!
    
    @IBAction func postText(sender: AnyObject) {
        let prefs = NSUserDefaults.standardUserDefaults()
        posts.append(enterText.text!)
        enterText.text = ""
        images.append("background")
        prefs.setObject(posts, forKey: "posts")
        prefs.setObject(images, forKey: "images")
        prefs.synchronize()
        self.tableView.reloadData()
    }
    var posts: [String] = []
    var images: [String] = []
    
    var num: Int? {
        return Int(posts.count)
    }
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
        if prefs.boolForKey("MusicToggle")
        {
            //PausePlayToggle.selectedSegmentIndex = 0
            playBackgroundMusic("BGMusic2.mp3")
        }
        else {
            PausePlayToggle.selectedSegmentIndex = 1
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return num!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let prefs = NSUserDefaults.standardUserDefaults()
        var posttext = prefs.arrayForKey("posts")
        //var imagelist = prefs.arrayForKey("images")
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        cell.photo.image = UIImage(named: "propic")
        cell.textView.text = posttext![indexPath.row] as! String
        
        return cell
    }
    
    func playBackgroundMusic(filename: String) {
        let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOfURL: newURL)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    @IBAction func reviewsClick(sender: UIButton) {
        let alert = UIAlertController(title: "Reviews", message: "There are currently no reviews", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    @IBAction func favoritesClick(sender: UIButton) {
        let alert = UIAlertController(title: "Favorites", message: "Favorites will be implemented at a later date", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

    @IBOutlet weak var tableView: UITableView!
}

