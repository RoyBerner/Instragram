//
//  ViewController.swift
//  Instragram
//
//  Created by Roy Berner on 01/09/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gameScore = PFObject(className:"GameScore")
        gameScore["score"] = 1337
        gameScore["playerName"] = "Sean Plott"
        gameScore["cheatMode"] = false
        gameScore.saveInBackground {
            (success: Bool, error: Error?) in
            if (success) {
                print("succes")
            } else {
                print("failed")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //test regel
}

