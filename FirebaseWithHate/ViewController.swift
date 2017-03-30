//
//  ViewController.swift
//  FirebaseWithHate
//
//  Created by Eugenio Barquín on 29/3/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FIRAnalytics.setScreenName("MainViewController", screenClass: "Main")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func evento1Action(_ sender: Any) {
        FIRAnalytics.logEvent(withName: "Action1",
                              parameters: ["producto" : "manzanas" as NSObject, "cantidad": "20" as NSObject])
    }

    @IBAction func evento2Action(_ sender: Any) {
        FIRAnalytics.logEvent(withName: "Action2", parameters: ["Cesta" : 25 as NSObject])
    }
}

