//
//  ViewController.swift
//  IpodClassic
//
//  Created by Clint Jellesed on 6/2/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var bandName: UILabel!
    @IBOutlet weak var trackNum: UILabel!
    
    var index = 0
    var songs: [String] = ["WildestDreams.mp3", "ALittleFaster.mp3", "MeMyselfAndI.mp3", "StressedOut.mp3"]
    var band: [String] = ["Taylor Swift", "There For Tomorrow", "G-Easy x Bebe-Rexha", "Twenty One Pilots"]
    
    @IBAction func backClick(sender: UIButton) {
        if index > 0 {
            index -= 1
            backgroundMusicPlayer.stop()
            playBackgroundMusic(songs[index])
            songName.text = "Song: " + songs[index]
            bandName.text = "Band: " + band[index]
            trackNum.text = "Track: " + String(index + 1) + " of " + String(songs.count)
        }
    }
    
    @IBAction func forwardClick(sender: UIButton) {
        if index < songs.count - 1 {
            index += 1
            backgroundMusicPlayer.stop()
            playBackgroundMusic(songs[index])
            songName.text = "Song: " + songs[index]
            bandName.text = "Band: " + band[index]
            trackNum.text = "Track: " + String(index + 1) + " of " + String(songs.count)

        }
    }
    
    @IBAction func PausePlay(sender: UIButton) {
        if backgroundMusicPlayer.playing {
            backgroundMusicPlayer.pause()
        }
            
        else {
            backgroundMusicPlayer.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playBackgroundMusic("WildestDreams.mp3")
        songName.text = "Song: " + songs[index]
        bandName.text = "Band: " + band[index]
        trackNum.text = "Track: " + String(index + 1) + " of " + String(songs.count)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var backgroundMusicPlayer = AVAudioPlayer()
    
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

