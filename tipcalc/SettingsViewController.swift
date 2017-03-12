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
    
    var usersTipPercentages = [Float]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        
        if(defaults.bool(forKey: "lowTip")) {
            let low = defaults.float(forKey: "lowTip")
            usersTipPercentages.append(low)
        } else {
            let low = 0.15
            usersTipPercentages.append(Float(low))
        }
        
        if(defaults.bool(forKey: "medTip")) {
            let med = defaults.float(forKey: "medTip")
            usersTipPercentages.append(med)
        } else {
            let med = 0.2
            usersTipPercentages.append(Float(med))
        }
        
        if(defaults.bool(forKey: "highTip")) {
            let high = defaults.float(forKey: "highTip")
            usersTipPercentages.append(high)
        } else {
            let high = 0.25
            usersTipPercentages.append(Float(high))
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    let userPercents: [Float] = []
    
    let defaults = UserDefaults.standard
    defaults.set(0, forKey: "lowTip")
    defaults.set(1, forKey: "medTip")
    defaults.set(2, forKey: "highTip")
    defaults.synchronize()


}
