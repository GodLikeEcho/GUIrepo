//
//  ViewController.swift
//  TicTacToe
//
//  Created by Clint Jellesed on 6/2/16.
//  Copyright © 2016 Clint Jellesed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var B00: UIButton!
    @IBOutlet weak var B01: UIButton!
    @IBOutlet weak var B02: UIButton!
    
    @IBOutlet weak var B10: UIButton!
    @IBOutlet weak var B11: UIButton!
    @IBOutlet weak var B12: UIButton!
    
    @IBOutlet weak var B20: UIButton!
    @IBOutlet weak var B21: UIButton!
    @IBOutlet weak var B22: UIButton!
    
    var wasx = false
    
    func winO() {
        let alert = UIAlertController(title: "Winner:", message: "Player O has won", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    func winX() {
        let alert = UIAlertController(title: "Winner", message: "Player X has won", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    var count = 0
    func draw() {
        let alert = UIAlertController(title: "Game Over", message: "Game ended in a draw", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    func checkWin() {
        count += 1
        if B00.currentTitle == "X" && B01.currentTitle == "X" && B02.currentTitle == "X"
        {
            winX()
        }
        if B10.currentTitle == "X" && B11.currentTitle == "X" && B12.currentTitle == "X"
        {
            winX()
        }
        if B20.currentTitle == "X" && B21.currentTitle == "X" && B22.currentTitle == "X"
        {
            winX()
        }
        
        
        if B00.currentTitle == "X" && B10.currentTitle == "X" && B20.currentTitle == "X"
        {
            winX()
        }
        else if B01.currentTitle == "X" && B11.currentTitle == "X" && B21.currentTitle == "X"
        {
            winX()
        }
        else if B02.currentTitle == "X" && B12.currentTitle == "X" && B22.currentTitle == "X"
        {
            winX()
        }
        
        else if B00.currentTitle == "X" && B11.currentTitle == "X" && B22.currentTitle == "X"
        {
            winX()
        }
        
        else if B02.currentTitle == "X" && B11.currentTitle == "X" && B20.currentTitle == "X"
        {
            winX()
        }
        
        //O win coditions
        
        else if B00.currentTitle == "O" && B01.currentTitle == "O" && B02.currentTitle == "O"
        {
            winO()
        }
        else if B10.currentTitle == "O" && B11.currentTitle == "O" && B12.currentTitle == "O"
        {
            winO()
        }
        else if B20.currentTitle == "O" && B21.currentTitle == "O" && B22.currentTitle == "O"
        {
            winO()
        }
        
        
        else if B00.currentTitle == "O" && B10.currentTitle == "O" && B20.currentTitle == "O"
        {
            winO()
        }
        else if B01.currentTitle == "O" && B11.currentTitle == "O" && B21.currentTitle == "O"
        {
            winO()
        }
        else if B02.currentTitle == "O" && B12.currentTitle == "O" && B22.currentTitle == "O"
        {
            winO()
        }
        
        else if B00.currentTitle == "O" && B11.currentTitle == "O" && B22.currentTitle == "O"
        {
            winO()
        }
        
        else if B02.currentTitle == "O" && B11.currentTitle == "O" && B20.currentTitle == "O"
        {
            winO()
        }
        
        else {
            if count == 9
            {
                draw()
            }
        }

        
    }
    @IBAction func B00click(sender: UIButton) {
        if wasx && B00.currentTitle != "X" && B00.currentTitle != "O" {
            B00.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else if B00.currentTitle != "X" && B00.currentTitle != "O"{
            B00.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }
        
    }
    
    @IBAction func B01(sender: UIButton) {
        if wasx && B01.currentTitle != "X" && B01.currentTitle != "O"  {
            B01.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else if B01.currentTitle != "X" && B01.currentTitle != "O" {
            B01.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    
    @IBAction func B02(sender: AnyObject) {
        if wasx && B02.currentTitle != "X" && B02.currentTitle != "O"  {
            B02.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B02.currentTitle != "X" && B02.currentTitle != "O"{
            B02.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    
    @IBAction func B10(sender: UIButton) {
        if wasx && B10.currentTitle != "X" && B10.currentTitle != "O"  {
            B10.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B10.currentTitle != "X" && B10.currentTitle != "O"{
            B10.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    @IBAction func B11(sender: UIButton) {
        if wasx && B11.currentTitle != "X" && B11.currentTitle != "O"  {
            B11.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B11.currentTitle != "X" && B11.currentTitle != "O"{
            B11.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    @IBAction func B12(sender: UIButton) {
        if wasx && B12.currentTitle != "X" && B12.currentTitle != "O"  {
            B12.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B12.currentTitle != "X" && B12.currentTitle != "O"{
            B12.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    
    @IBAction func B30(sender: UIButton) {
        if wasx && B20.currentTitle != "X" && B20.currentTitle != "O"  {
            B20.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B20.currentTitle != "X" && B20.currentTitle != "O"{
            B20.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    @IBAction func B31(sender: UIButton) {
        if wasx && B21.currentTitle != "X" && B21.currentTitle != "O"  {
            B21.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B21.currentTitle != "X" && B21.currentTitle != "O"{
            B21.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
        }

    }
    
    @IBAction func B32(sender: UIButton) {
        if wasx && B22.currentTitle != "X" && B22.currentTitle != "O"  {
            B22.setTitle("O", forState: .Normal)
            wasx = false
            checkWin()
        }
        else  if B22.currentTitle != "X" && B22.currentTitle != "O"{
            B22.setTitle("X", forState: .Normal)
            wasx = true
            checkWin()
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

