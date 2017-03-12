//
//  SettingsViewController.swift
//  tipcalc
//
//  Created by Aaron Piotrowski on 3/4/17.
//  Copyright © 2017 Aaron Piotrowski. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var lowTipTextField: UITextField!
    @IBOutlet weak var medTipTextField: UITextField!
    @IBOutlet weak var highTipTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let userPercents: [Int] = []
    
    let defaults = UserDefaults.standard
    defaults.set(0, forKey: "lowTip")
    defaults.set(1, forKey: "medTip")
    defaults.set(2, forKey: "highTip")
    defaults.synchronize()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
