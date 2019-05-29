//
//  ViewController.swift
//  HelloWorld
//
//  Created by Tara Weinreb on 5/28/19.
//  Copyright © 2019 Tara Weinreb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberDisplayed:Int32 = 0
    var prevNum:Int32 = 0
    var isMath = false
    var isReset = false
    
    @IBOutlet weak var label: UITextField!
    
    @IBAction func number(_ sender: UIButton) {
        if isMath == true {
            label.text = String(sender.tag)
            numberDisplayed = Int32(label.text!)!
            isMath = false
        }
        else {
            if isReset {
                label.text = ""
                isReset = false
            }
            label.text = label.text! + String(sender.tag)
            numberDisplayed = Int32(label.text!)!
        }
    }
    
    @IBAction func operation(_ sender: UIButton) {
        if sender.tag == 11 {
            prevNum = Int32(label.text!)! + prevNum
            isMath = true
            
        } else if sender.tag == 12 {
            label.text = String(0)
            numberDisplayed = 0;
            prevNum = 0
            isMath = false
            isReset = true
            
        } else {
            label.text = String(prevNum + numberDisplayed)
            prevNum = 0
            numberDisplayed = prevNum + numberDisplayed
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

