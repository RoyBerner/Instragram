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
        /*
       let tweet = PFObject(className: "Tweet")
        
        tweet["content"] = "Good morning world!"
        
        tweet.saveInBackground { (success, error) in
            if (success) {
                print("success")
            } else {
                print("failed")
            }
        }
 */
        
        let query = PFQuery(className: "Tweet")
        
        query.getObjectInBackground(withId: "MxPHSjmPV8") { (object, error) in
            
            if let tweet = object {
                print(tweet)
            } else {
                print("retrieve failed")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //test regel
}

