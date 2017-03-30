//
//  SecondViewController.swift
//  FirebaseWithHate
//
//  Created by Eugenio Barquín on 30/3/17.
//  Copyright © 2017 Eugenio Barquín. All rights reserved.
//

import UIKit
import Firebase

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        FIRAnalytics.setScreenName("SecondViewController", screenClass: "Second")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func evento3Action(_ sender: Any) {
        FIRAnalytics.logEvent(withName: "Action3",
                              parameters: ["producto_desc" : "manzanas" as NSObject])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
