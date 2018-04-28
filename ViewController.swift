//
//  ViewController.swift
//  FindSpeacialChar
//
//  Created by Ankit Gabani.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = ["Nick", "b'*en", "Adam", "Melissa", "arbind"]
        let strToBeSearched = "i"
        let sPredicate = NSPredicate(format: "SELF contains[c] %@", strToBeSearched)
        
 //       var sPredicate = NSPredicate(format: "SELF contains[c] 'b\\''")
        let beginWithB = (array as NSArray).filtered(using: sPredicate)
        print("containB = \(beginWithB)")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
