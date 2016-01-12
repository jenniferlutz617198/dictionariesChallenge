//
//  ViewController.swift
//  DictionariesChallege
//
//  Created by Robert Hannon on 6/15/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    /***************************************************
    * Start Your Code Here For MVP
    ***************************************************/
    var addressBook: Dictionary<String, String> = ["name": "Jennifer", "address": "1234 mac and cheese st.", "city": "chicago", "state": "Il", "zip": "60056"]
    /***************************************************
    * End Your Code Here For MVP
    ***************************************************/

        override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = addressBook["name"]
        addressLabel.text = addressBook["address"]
        cityLabel.text = addressBook["city"]
        stateLabel.text = addressBook["state"]
        zipLabel.text = addressBook["zip"]
    }

    @IBAction func stretchOnePressed(sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        addressBook["phone number"] = "000-000-000"
        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/
        var output:String = ""

        for (key,value) in addressBook
        {
            //Uncomment the line below for Stretch #1
            output += (key + ":" + value + "\n")
        }

        myTextView.text = output
    }

    @IBAction func stetchTwoPressed(sender: UIButton) {

        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
        addressBook.removeValueForKey("state")
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        var output:String = ""

        for (key,value) in addressBook
        {
            //Uncomment the line below for Stretch #2
            output += (key + ":" + value + "\n")
        }

        myTextView.text = output
    }

    @IBAction func stretchThreePressed(sender: UIButton) {
        /***************************************************
        * Start Your Code Here For Stretch #3
        ***************************************************/
        var addressKeys: [String] = [
        /***************************************************
        * End Your Code Here For Stretch #3
        ***************************************************/
        var output:String = ""

        for var x = 0; x < addressBook.count; x++
        {
            //Uncomment the line below for Stretch #3
            //output += addressKeys[x] + " has a value of " + addressValues[x] + "\n"
        }

        myTextView.text = output
    }
}

