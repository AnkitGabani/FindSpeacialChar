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
    
    var dateString = ""
        if let createDateStr = "2020-07-01T11:09:32.2124188-04:00"
        {
                let arrSplit = createDateStr.components(separatedBy: "T")
                let objct1 = arrSplit[0] as! String
                let objct2 = arrSplit[1] as! String

                let arrSplit1 = objct1.components(separatedBy: "-")
                let strYear = arrSplit1[0] as! String
                let strMonth = arrSplit1[1] as! String
                let strDay = arrSplit1[2] as! String
            
                let arrSplit2 = objct2.components(separatedBy: ":")
                let strHour = arrSplit2[0] as! String
                let strMin = arrSplit2[1] as! String
                
                let monthNumber = (Int)(strMonth)

            let fmt = DateFormatter()
            //fmt.dateFormat = "MMM"
            fmt.dateStyle = .medium
            let strMonthName = fmt.monthSymbols[monthNumber! - 1]
            
            dateString = String.init(format: "%@ %@ %@ %@:%@", strDay,strMonthName.prefix(3) as CVarArg,strYear,strHour,strMin)
        }
        
        cell.lblOrderDate.text = dateString

}
