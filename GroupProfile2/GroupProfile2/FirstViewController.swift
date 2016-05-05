//
//  FirstViewController.swift
//  GroupProfile2
//
//  Created by Clint Jellesed on 4/27/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController {
    @IBAction func PausePlay(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            backgroundMusicPlayer.play()
        }
        
        else if sender.selectedSegmentIndex == 1 {
            backgroundMusicPlayer.pause()
        }
        
    }

    var backgroundMusicPlayer = AVAudioPlayer()
    
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
        //playSound("BGMusic2")
        //audioPlay.play()
        playBackgroundMusic("BGMusic2.mp3")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
}

